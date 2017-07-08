CREATE TABLE [İşçilər] (
	id integer(10) NOT NULL,
	Müştərilər_id integer(10) NOT NULL,
	name varchar(255) NOT NULL,
	surnaname varchar(255) NOT NULL,
	vəzifəsi varchar(255) NOT NULL,
  CONSTRAINT [PK_İşçILəR] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Turizm _Şirkəti] (
	id integer(10) NOT NULL,
	İşçilər_id integer(10) NOT NULL,
	Turlar_id integer(10) NOT NULL,
	Müştərilər_id integer(10) NOT NULL,
  CONSTRAINT [PK_TURIZM _ŞIRKəTI] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Müştərilər] (
	id integer(10) NOT NULL,
	İşçilər_id integer(10) NOT NULL,
	name varchar(255) NOT NULL,
	surname varchar(255) NOT NULL,
	ödədiyi_pul integer(11) NOT NULL,
	Turlar_paketi_id integer(10) NOT NULL,
  CONSTRAINT [PK_MüşTəRILəR] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Turlar] (
	id integer(10) NOT NULL,
	info text(1500) NOT NULL,
	Müştərilər_id integer(10) NOT NULL,
  CONSTRAINT [PK_TURLAR] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [İşçilər] WITH CHECK ADD CONSTRAINT [İşçilər_fk0] FOREIGN KEY ([Müştərilər_id]) REFERENCES [Müştərilər]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [İşçilər] CHECK CONSTRAINT [İşçilər_fk0]
GO

ALTER TABLE [Turizm _Şirkəti] WITH CHECK ADD CONSTRAINT [Turizm _Şirkəti_fk0] FOREIGN KEY ([İşçilər_id]) REFERENCES [İşçilər]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [Turizm _Şirkəti] CHECK CONSTRAINT [Turizm _Şirkəti_fk0]
GO
ALTER TABLE [Turizm _Şirkəti] WITH CHECK ADD CONSTRAINT [Turizm _Şirkəti_fk1] FOREIGN KEY ([Turlar_id]) REFERENCES [Turlar]([info])
ON UPDATE CASCADE
GO
ALTER TABLE [Turizm _Şirkəti] CHECK CONSTRAINT [Turizm _Şirkəti_fk1]
GO
ALTER TABLE [Turizm _Şirkəti] WITH CHECK ADD CONSTRAINT [Turizm _Şirkəti_fk2] FOREIGN KEY ([Müştərilər_id]) REFERENCES [Müştərilər]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [Turizm _Şirkəti] CHECK CONSTRAINT [Turizm _Şirkəti_fk2]
GO

ALTER TABLE [Müştərilər] WITH CHECK ADD CONSTRAINT [Müştərilər_fk0] FOREIGN KEY ([İşçilər_id]) REFERENCES [İşçilər]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [Müştərilər] CHECK CONSTRAINT [Müştərilər_fk0]
GO
ALTER TABLE [Müştərilər] WITH CHECK ADD CONSTRAINT [Müştərilər_fk1] FOREIGN KEY ([Turlar_paketi_id]) REFERENCES [Turlar]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [Müştərilər] CHECK CONSTRAINT [Müştərilər_fk1]
GO

ALTER TABLE [Turlar] WITH CHECK ADD CONSTRAINT [Turlar_fk0] FOREIGN KEY ([Müştərilər_id]) REFERENCES [Müştərilər]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [Turlar] CHECK CONSTRAINT [Turlar_fk0]
GO

