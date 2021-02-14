package model

type Model struct {
	ID       uint32 `gorm:"primary_key" json:"id"`
	Created  string `json:"created"`
	Modified string `json:"modified"`
	Ctime    string `json:"ctime"`
	UTime    string `json:"utime"`
	DTime    string `json:"dtime"`
	IsDel    uint8  `json:"is_del"`
}
