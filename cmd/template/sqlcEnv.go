package template

import (
	_ "embed"
)

//go:embed framework/files/sqlc_env.tmpl
var sqlcEnvTemplate []byte

func SQLCEnvTemplate() []byte {
	return sqlcEnvTemplate
}
