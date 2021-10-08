module github.com/forbole/bdjuno

go 1.15

require (
	github.com/CosmosContracts/juno v1.0.0
	github.com/cosmos/cosmos-sdk v0.44.0
	github.com/cosmos/iavl v0.17.1 // indirect
	github.com/cosmos/ibc-go v1.2.0
	github.com/go-co-op/gocron v0.3.3
	github.com/go-sql-driver/mysql v1.5.0 // indirect
	github.com/gogo/protobuf v1.3.3
	github.com/improbable-eng/grpc-web v0.14.1 // indirect
	github.com/jhump/protoreflect v1.9.0 // indirect
	github.com/jmoiron/sqlx v1.2.1-0.20200324155115-ee514944af4b
	github.com/lib/pq v1.10.2
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e // indirect
	github.com/onsi/ginkgo v1.16.4 // indirect
	github.com/onsi/gomega v1.13.0 // indirect
	github.com/pelletier/go-toml v1.9.3
	github.com/proullon/ramsql v0.0.0-20181213202341-817cee58a244
	github.com/rs/zerolog v1.23.0
	github.com/spf13/cobra v1.2.1 // indirect
	github.com/stretchr/testify v1.7.0
	github.com/tendermint/tendermint v0.34.13
	github.com/toschdev/junoindex v0.1.1
	github.com/ziutek/mymysql v1.5.4 // indirect
	golang.org/x/crypto v0.0.0-20210513164829-c07d793c2f9a // indirect
	google.golang.org/grpc v1.40.0
	gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f // indirect
)

replace google.golang.org/grpc => google.golang.org/grpc v1.33.2

replace github.com/tendermint/tendermint => github.com/tendermint/tendermint v0.34.13

replace github.com/tendermint/spm => github.com/faddat/spm v0.44.1

replace github.com/gogo/protobuf => github.com/regen-network/protobuf v1.3.3-alpha.regen.1
