package history

import (
	"fmt"
	"time"

	juno "github.com/desmos-labs/juno/types"

	"github.com/gogo/protobuf/proto"

	"github.com/cosmos/cosmos-sdk/codec"
	sdk "github.com/cosmos/cosmos-sdk/types"
	"github.com/desmos-labs/juno/modules/messages"

	"github.com/forbole/bdjuno/database"
	historyutils "github.com/forbole/bdjuno/modules/history/utils"
	"github.com/forbole/bdjuno/modules/utils"
)

// HandleMsg handles any message updating the involved accounts
func HandleMsg(tx *juno.Tx, msg sdk.Msg, getAddresses messages.MessageAddressesParser, cdc codec.Codec, db *database.Db) error {
	timestamp, err := time.Parse(time.RFC3339, tx.Timestamp)
	if err != nil {
		return err
	}

	addresses, err := getAddresses(cdc, msg)
	if err != nil {
		return fmt.Errorf("error while getting accounts after message of type %s", proto.MessageName(msg))
	}

	for _, address := range utils.FilterNonAccountAddresses(addresses) {
		err = historyutils.UpdateAccountBalanceHistoryWithTime(address, timestamp, db)
		if err != nil {
			return err
		}
	}

	return nil
}
