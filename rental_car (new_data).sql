USE [rental_car]
GO
SET IDENTITY_INSERT [dbo].[users] ON 
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (1, N'admin123', N'tphong610198@gmail.com', N'$2a$12$CuXL88lRV.caI3o.5ZB/wOM3mUPxEeVp7PnUYC9Tu6iefOfhTlfxO', N'Admin', N'male', N'0123456789', N'uploads/avatars/bb5cb37c-fb96-4a04-a5d6-7bd5732bf5b0.jpg', N'admin', N'active', CAST(N'2025-02-09T16:58:16.1666667' AS DateTime2), CAST(N'2025-02-09T17:12:48.3000000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (2, N'phongthhe186443', N'phongthhe186443@fpt.edu.vn', N'$2a$10$mqTbeXOjwWftYcp3HvgbF.vynnSvUqQfBUY6wj7m7m/tiEnv/YYA6', N'Tran Hoai Phong (K18 HL)', N'other', NULL, N'https://lh3.googleusercontent.com/a/ACg8ocLrSqjCMqEhVL5SMILJ6OOpPyI5S64iKP29HhPEV9aIOgF0i-g=s96-c', N'customer', N'active', CAST(N'2025-02-09T17:02:23.6133333' AS DateTime2), CAST(N'2025-02-09T17:02:23.6133333' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (3, N'owner123', N'huy412004@gmail.com', N'$2a$10$sYcqeKA5lzaWHHEHojLoxe378EtZni5873xBA8YfljCthxCADhmoy', N'Owner', N'male', N'0987654321', N'https://img.freepik.com/premium-photo/customer-service-representative-digital-avatar-generative-ai_934475-9273.jpg?w=360', N'owner', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (4, N'user123', N'user123@gmail.com', N'$2a$10$XFl8Zk5zSXQo/PjN4df.k.twXuumSIvYM7jLRqVcvx2heTFVyW0Ca', N'Khách 1', N'male', N'0912345678', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEONEP1EegBp0dESaBFaDbw8G9fJY_k7oY5A&s', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (5, N'sale123', N'sale123@gmail.com', N'$2a$10$ojVPuuE5ZVLPE/wWOSRFIeNKLkBZh/CZeHE57ij4F.cfKYsdmIxAO', N'Sale', N'male', N'0978123456', N'https://img.freepik.com/premium-photo/customer-service-representative-digital-avatar-generative-ai_934475-9075.jpg', N'sale', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (6, N'user321', N'user321@gmail.com', N'$2a$10$7d0sV4kA8mSbQoJhGmROJumQnBeqtpzzMxz7yslGGf5Z1lhx85M7O', N'Khách 2', N'male', N'0934567890', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl5nDZUl0qC61tJ7SVbzLmlO_jKALvNrV0iw&s', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (7, N'user1234', N'XiaoDing@gmail.com', N'$2a$10$Yw.YHLgW3IAdZAvicADymOZ4CqopkkbD90.DW7m.0Nz3PxuF/pvsK', N'Khách 3', N'male', N'0956781234', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd8RTFkScmVoIQoLsbDscznUGlMz4BMT7oGWYqr8-TJ2FuN55cES6KfCmAxSe1aBM6qYs&usqp=CAU', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-03-29T17:43:12.3400000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (8, N'user12345', N'Medusa@gmail.com', N'$2a$10$7Wjzn5r0OX2pcdowGvA39OBnpNP9.b4MvoaXH4terFmIpSN/htzqa', N'Khách 4', N'female', N'0923456789', N'https://png.pngtree.com/png-vector/20231019/ourlarge/pngtree-avatar-of-a-brunette-man-png-image_10214156.png', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (9, N'user12346', N'CaiLin@gmail.com', N'$2a$10$de4mBMbt0qfpuKCs0jF1I.wHr5/dfWMYQikSJ8aJqbHyZ8qH2IxXu', N'Khách 5', N'female', N'0965432109', N'https://png.pngtree.com/png-clipart/20231020/original/pngtree-avatar-of-a-brunette-man-png-image_13379740.png', N'customer', N'pending', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (10, N'user123467', N'HaiBoDong@gmail.com', N'$2a$10$5l/p6PdL8crcmH0qAcniEuQGjrlNc1GYrSWKcYVeloYoxtqhczhOe', N'Khách 6', N'male', N'0998765432', N'https://static.vecteezy.com/ti/vetor-gratis/t2/14176992-jovem-homem-barbudo-gratis-vetor.jpg', N'customer', N'inactive', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-03-29T17:43:25.1266667' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (11, N'user3210', N'NalanYanran@gmail.com', N'$2a$10$.Aa9sv.fZvHA4HIS6vcfNuSGM.zlr3ldxMuo8FccCVDGIgjaYP8pq', N'Khách 7', N'female', N'0943216789', N'https://thumbs.dreamstime.com/b/retrato-de-um-homem-novo-com-barba-e-penteado-avatar-masculino-vetor-105082137.jpg', N'customer', N'inactive', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (12, N'user4321', N'GuYuan@gmail.com', N'$2a$10$JaWF8M.AaFAxaCcq7e2zK.TLravMOCQvxG3NXAAoKlDMVnL/PVzq6', N'Khách 8', N'male', N'0981234567', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMELTwIC8sNsdL8iJDfpcvyZ0M08ktRXe9nd4dy2E2_KBfwlNiTCUyrTe5I-Dsz4s19b4&usqp=CAU', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (13, N'user54321', N'GuXun@gmail.com', N'$2a$10$s.runNoG/32WCxknTJrbs.6oqxowlmPDAqgFdvEgs7xcOOYyrEbQW', N'Khách 9', N'male', N'0976543210', N'https://png.pngtree.com/png-clipart/20230930/original/pngtree-man-avatar-isolated-png-image_13022161.png', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (14, N'user654321', N'YunShan@gmail.com', N'$2a$10$tdQRtCI1.aPdt.qbe2ee.eOrC2Tq2XQymcNE9z9.6GChMVWVRHGYy', N'Khách 10', N'male', N'0919876543', N'https://thuvienanime.net/wp-content/uploads/2023/07/van-son-van-lam-tong-thuvienanime-1.jpg', N'customer', N'inactive', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (15, N'user7654321', N'FaMa@gmail.com', N'$2a$10$T7bONEjEQCimeWWQGFDPzuhsN10hiSSbQFFugWa.MUOA93XyLYWTu', N'Khách 11', N'male', N'0921987654', N'https://i.pinimg.com/1200x/97/79/fc/9779fc310f1bf2f3ff9e17f14b5143e8.jpg', N'customer', N'pending', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (16, N'ur123', N'HuJia@gmail.com', N'$2a$10$3iPVuYw6ScoAZULHkjrkyOcMSbMzVWMiQH35Pnw.de1rnGNjxN2ku', N'Khách 12', N'female', N'0932198765', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1-CatM7FqGbzGe3AT3aq-D1l30ymqbT4TCw&s', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (17, N'ur1234', N'LingYing@gmail.com', N'$2a$10$/wuejts3V40G0e/NGB/pOuM5ciGBGTL.fPPNoMDOvb.NVdQmgIjU.', N'Khách 13', N'male', N'0954321987', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2JlHW6h7apfGjoJtk5PyJ7lyEn9hhSPCWKD4zMyakPR285cDGKLszvZGiGDz3bWx3IRI&usqp=CAU', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (18, N'ur1235', N'YanXiao@gmail.com', N'$2a$10$7QRPlkWt96Ah6r.5Frgiku3/QCZpAwMDPyLuvurl61Uqij.fqJbTC', N'Khách 14', N'male', N'0965432198', N'https://i.pinimg.com/736x/97/43/df/9743df24110f180466d0247ba76e5415.jpg', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (19, N'ur1236', N'QingLin@gmail.com', N'$2a$10$5UThIZ.2xCuTFxaq3Xtd4OQUDPPQLhsWWlbrWXJydo574exxXviKO', N'Khách 15', N'female', N'0976543219', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP6wBKSzroOocvJhUH4Beh3q5bK02NU-zIJQ&s', N'customer', N'inactive', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (20, N'ur1237', N'XiaoLei@gmail.com', N'$2a$10$WIhlpSF/rOFJ06PxhnhQ7OLriyxm2rkxRKyq2ThvpkRtKQTlzDPcS', N'Khách 16', N'male', N'0987654329', N'https://img.tripi.vn/cdn-cgi/image/width=700,height=700/https://gcs.tripi.vn/public-tripi/tripi-feed/img/483123vwz/anh-mo-ta.png', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (21, N'ur321', N'FengLei@gmail.com', N'$2a$10$f68ZbQbQru4.i8erDSO4quX27/d/Czq0jRBJXCbOmsHH/zE80tD8.', N'Khách 17', N'male', N'0998765431', N'https://cafebiz.cafebizcdn.vn/162123310254002176/2022/12/29/avatar-2-versus-thanos-cgi-1-1671044444279520813159-1672281093701-16722810940541552675226.jpg', N'customer', N'pending', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (22, N'ur4321', N'ZiYan@gmail.com', N'$2a$10$ky5Lacc8ObH4QwmJ8LGeauTWFq5CT2/cxQhM98ug/lSH4xGYU.J7i', N'Khách 18', N'female', N'0909876543', N'https://media.ngoisao.vn/news/2012/12/31/nghiengdau_3112.jpg', N'customer', N'active', CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2), CAST(N'2025-02-10T03:04:56.3300000' AS DateTime2))
GO
INSERT [dbo].[users] ([id], [username], [email], [password_hash], [full_name], [gender], [mobile], [avatar], [role], [status], [created_at], [updated_at]) VALUES (23, N'datvthe186351', N'datvthe186351@fpt.edu.vn', N'accGoogle$2a$10$h44bRXTsQJQCici5AoAukOA5Ce2fTeBpM6lg/cZ.Nwv.rlR7Jrsi.', N'Vu Tien Dat (K18 HL)', N'other', NULL, N'https://lh3.googleusercontent.com/a/ACg8ocLQS4GRdIkgNSZsWOVpDwwFWXGhLH-yQipv1mlpgBm2-tQ_Af4=s96-c', N'customer', N'active', CAST(N'2025-03-29T03:29:25.0933333' AS DateTime2), CAST(N'2025-03-29T03:29:25.0933333' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET IDENTITY_INSERT [dbo].[cart] ON 
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (1, 1, CAST(N'2025-02-21T18:35:43.8400000' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (2, 2, CAST(N'2025-02-21T18:35:43.8400000' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (3, 3, CAST(N'2025-02-21T18:35:43.8400000' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (4, 23, CAST(N'2025-03-29T03:29:25.1166667' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (5, 4, CAST(N'2025-03-29T03:31:52.8700000' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (6, 5, CAST(N'2025-03-29T16:42:37.0000000' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (7, 6, CAST(N'2025-03-29T16:54:37.9000000' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (8, 7, CAST(N'2025-03-29T16:54:46.2900000' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (9, 8, CAST(N'2025-03-29T17:02:48.7966667' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (10, 9, CAST(N'2025-03-29T17:02:56.4966667' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (11, 12, CAST(N'2025-03-29T17:07:14.2566667' AS DateTime2))
GO
INSERT [dbo].[cart] ([id], [user_id], [created_at]) VALUES (12, 11, CAST(N'2025-03-29T17:07:22.4433333' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[cart] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 
GO

-- Level 1: Lo?i xe chính (5 categories)
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (1, N'Xe Sedan', N'Xe sedan phổ thông và cao cấp', NULL, 1, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (2, N'Xe SUV', N'Xe SUV và địa hình', NULL, 1, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (3, N'Xe Van/MPV', N'Xe đa dạng và gia đình', NULL, 1, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (4, N'Xe Sang', N'Xe hạng sang và cao cấp', NULL, 1, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (5, N'Xe đặc Biệt', N'Xe thể thao, cổ điển và đặc biệt', NULL, 1, N'active')
GO

-- Level 2: Phân lo?i theo lo?i xe Sedan (6 categories)
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (6, N'Sedan 4 chỗ', N'Xe sedan nhỏ gọn 4 chỗ ngồi', 1, 2, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (7, N'Sedan 5 chỗ', N'Xe sedan tiêu chuẩn 5 chỗ ngồi', 1, 2, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (8, N'SUV 5 chỗ', N'Xe SUV cỡ nhỏ và trung 5 chỗ', 2, 2, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (9, N'SUV 7 chỗ', N'Xe SUV cỡ lớn 7 chỗ', 2, 2, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (10, N'Van 7 chỗ', N'Xe van 7 chỗ ngồi', 3, 2, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (11, N'Van 9-16 chỗ', N'Xe van lớn đa dụng', 3, 2, N'active')
GO

-- Level 3: Chi ti?t Sedan 4 ch? (4 categories)
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (12, 'Toyota Vios', N'Xe Toyota Vios các đời', 7, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (13, N'Honda City', N'Xe Honda City các đời', 7, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (14, N'Hyundai Accent', N'Xe Hyundai Accent các đời', 7, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (15, N'Mazda 3', N'Xe Mazda 3 các đời', 7, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (16, N'Kia Cerato', N'Xe Kia Cerato các đời', 7, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (17, N'Honda Civic', N'Xe Honda Civic các đời', 7, 3, N'active')
GO

-- Level 3: Chi ti?t SUV 5 ch? (6 categories)
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (18, N'Honda CR-V', N'Xe Honda CR-V các đời', 8, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (19, N'Mazda CX-5', N'Xe Mazda CX-5 các đời', 8, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (20, N'Ford EcoSport', N'Xe Ford EcoSport các đời', 8, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (21, N'Hyundai Tucson', N'Xe Hyundai Tucson các đời', 8, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (22, N'Kia Seltos', N'Xe Kia Seltos các đời', 8, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (23, N'Toyota Corolla Cross', N'Xe Toyota Corolla Cross các đời', 8, 3, N'active')
GO

-- Level 3: Chi ti?t SUV 7 ch? (5 categories)
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (24, N'Toyota Fortuner', N'Xe Toyota Fortuner các đời', 9, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (25, N'Ford Everest', N'Xe Ford Everest các đời', 9, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (26, N'Mazda CX-8', N'Xe Mazda CX-8 các đời', 9, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (27, N'Hyundai SantaFe', N'Xe Hyundai SantaFe các đời', 9, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (28, N'Mitsubishi Xpander', N'Xe Mitsubishi Xpander các đời', 9, 3, N'active')
GO

-- Level 3: Chi ti?t Van 7 ch? (4 categories)
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (29, N'Toyota Innova', N'Xe Toyota Innova các đời', 10, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (30, N'Mitsubishi Xpander Cross', N'Xe Mitsubishi Xpander Cross', 10, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (31, N'Suzuki Ertiga', N'Xe Suzuki Ertiga các đời', 10, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (32, N'Kia Carnival', N'Xe Kia Carnival cao cấp', 10, 3, N'active')
GO

-- Level 3: Chi ti?t Van 9-16 ch? (3 categories)
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (33, N'Ford Transit', N'Xe Ford Transit 16 chỗ', 11, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (34, N'Hyundai Solati', N'Xe Hyundai Solati 16 chõ', 11, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (35, N'Mercedes Sprinter', N'Xe Mercedes Sprinter cao cấp', 11, 3, N'active')
GO

-- Level 2: Xe Sang (6 categories)
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (36, N'Sedan Sang', N'Xe sedan hạng sang', 4, 2, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (37, N'SUV Sang', N'Xe SUV hạng sang', 4, 2, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (38, N'Sedan 4 chỗ Nhỏ', N'Xe sedan cỡ nhỏ tiết kiệm', 6, 2, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (39, N'Sedan 4 chỗ Trung', N'Xe sedan 4 chỗ cỡ trung', 6, 2, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (40, N'Xe Thể Thao', N'Xe thể thao và coupe', 5, 2, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (41, N'Xe Bán Tải', N'Xe bán tải pickup', 5, 2, N'active')
GO

-- Level 3: Sedan Sang (6 categories)
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (42, N'Mercedes C-Class', N'Xe Mercedes C-Class', 36, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (43, N'BMW 3 Series', N'Xe BMW 3 Series', 36, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (44, N'Audi A4', N'Xe Audi A4', 36, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (45, N'Mercedes E-Class', N'Xe Mercedes E-Class', 36, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (46, N'BMW 5 Series', N'Xe BMW 5 Series', 36, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (47, N'Lexus ES', N'Xe Lexus ES', 36, 3, N'active')
GO

-- Level 3: SUV Sang (5 categories)
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (48, N'Mercedes GLC', N'Xe Mercedes GLC', 37, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (49, N'BMW X3', N'Xe BMW X3', 37, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (50, N'Audi Q5', N'Xe Audi Q5', 37, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (51, N'Lexus RX', N'Xe Lexus RX', 37, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (52, N'Range Rover', N'Xe Range Rover các dòng', 37, 3, N'active')
GO

-- Level 3: Sedan 4 ch? Nh? (4 categories)
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (53, N'Toyota Wigo', N'Xe Toyota Wigo', 38, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (54, N'Hyundai Grand i10', N'Xe Hyundai Grand i10', 38, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (55, N'Kia Morning', N'Xe Kia Morning', 38, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (56, N'VinFast Fadil', N'Xe VinFast Fadil', 38, 3, N'active')
GO

-- Level 3: Sedan 4 ch? Trung (3 categories)
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (57, N'Honda Accord', N'Xe Honda Accord', 39, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (58, N'Toyota Camry', N'Xe Toyota Camry', 39, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (59, N'Mazda 6', N'Xe Mazda 6', 39, 3, N'active')
GO

-- Level 3: Xe Th? Thao (4 categories)
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (60, N'Mazda MX-5', N'Xe Mazda MX-5 mui trần', 40, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (61, N'Ford Mustang', N'Xe Ford Mustang thể thao', 40, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (62, N'BMW Z4', N'Xe BMW Z4 roadster', 40, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (63, N'Porsche 911', N'Xe Porsche 911', 40, 3, N'active')
GO

-- Level 3: Xe Bán T?i (4 categories)
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (64, N'Ford Ranger', N'Xe Ford Ranger bán tải', 41, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (65, N'Toyota Hilux', N'Xe Toyota Hilux bán tải', 41, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (66, N'Mitsubishi Triton', N'Xe Mitsubishi Triton', 41, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (67, N'Mazda BT-50', N'Xe Mazda BT-50 bán tải', 41, 3, N'active')
GO

-- Thêm các categories b? sung ?? ?? 71 (4 categories)
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (68, N'Xe điện', N'Xe điện các loại', 5, 2, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (69, N'VinFast VF8', N'Xe VinFast VF8 điện', 68, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (70, N'VinFast VF9', N'Xe VinFast VF9 điện', 68, 3, N'active')
GO
INSERT [dbo].[categories] ([id], [name], [description], [parent_id], [level], [status]) VALUES (71, N'Tesla Model 3', N'Xe Tesla Model 3', 68, 3, N'active')
GO

SET IDENTITY_INSERT [dbo].[categories] OFF
GO


SET IDENTITY_INSERT [dbo].[cars] ON 
GO

-- car 1: Toyota Vios
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (1, N'Toyota Vios 2023', 12, N'<p><strong>Toyota Vios 2023  Sedan Ti?t Ki?m, B?n B?, Phù H?p M?i Nhu C?u</strong></p>
<p>?? <strong>Toyota Vios 2023</strong> là m?u sedan 5 ch? ph? bi?n nh?t t?i Vi?t Nam, l?a ch?n hoàn h?o cho gia ?ình và doanh nghi?p v?i chi phí h?p lý.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? ti?t ki?m</strong>: 1.5L VVT-i, tiêu th? nhiên li?u ch? 5.3L/100km.<br>
? <strong>N?i th?t r?ng rãi</strong>: 5 ch? ng?i tho?i mái, h? th?ng ?i?u hòa mát l?nh.<br>
? <strong>An toàn v??t tr?i</strong>: H? th?ng phanh ABS, EBD, 2 túi khí.<br>
? <strong>V?n hành êm ái</strong>: H?p s? t? ??ng CVT, lái nh? nhàng trong thành ph?.<br>
? <strong>Giá thuê c?nh tranh</strong>: Phù h?p cho thuê theo ngày, tháng ho?c h?p ??ng dài h?n.<br>
? <strong>Phù h?p m?i ??a hình</strong>: ?i công tác, du l?ch gia ?ình, d?ch v? taxi công ngh?.</p>
<p>?? <strong>Thuê ngay Toyota Vios 2023 ?? tr?i nghi?m s? ti?n l?i và ti?t ki?m!</strong> ?</p>', 
CAST(600000.00 AS Decimal(10, 2)), CAST(500000.00 AS Decimal(10, 2)), 
N'https://i1-vnexpress.vnecdn.net/2023/05/08/vios-1683532902-8865-1683532941.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=m2w2CqYm7Lbnu2DcOgTz4w', 
N'active', 1, N'1', 
CAST(N'2024-02-10T05:35:14.1666667' AS DateTime2), CAST(N'2025-03-29T18:30:33.0233333' AS DateTime2))
GO

-- car 2: Honda City
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (2, N'Honda City 2024', 13, N'<p><strong>Honda City 2024  Sedan Sang Tr?ng, Công Ngh? Hi?n ??i</strong></p>
<p>?? <strong>Honda City 2024</strong> n?i b?t v?i thi?t k? th? thao, n?i th?t cao c?p và công ngh? an toàn hàng ??u phân khúc sedan h?ng B.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? m?nh m?</strong>: 1.5L DOHC i-VTEC, công su?t 119 mã l?c.<br>
? <strong>Thi?t k? th? thao</strong>: Ngo?i th?t n?ng ??ng, ?èn LED full, la-z?ng h?p kim 16 inch.<br>
? <strong>N?i th?t sang tr?ng</strong>: Gh? da, màn hình c?m ?ng 8 inch, k?t n?i Apple CarPlay/Android Auto.<br>
? <strong>Công ngh? an toàn</strong>: Honda Sensing v?i 6 túi khí, c?nh báo va ch?m, gi? làn ???ng.<br>
? <strong>Ti?t ki?m nhiên li?u</strong>: Ch? 5.0L/100km, phù h?p di chuy?n ???ng dài.<br>
? <strong>Phù h?p cho</strong>: Công tác, du l?ch, ??a ?ón sân bay, d?ch v? cao c?p.</p>
<p>?? <strong>??t xe Honda City 2024 ngay hôm nay ?? tr?i nghi?m ??ng c?p!</strong> ?</p>', 
CAST(700000.00 AS Decimal(10, 2)), CAST(600000.00 AS Decimal(10, 2)), 
N'https://otohondaquan2.vn/wp-content/uploads/2023/02/honda-city-rs-2024-10.jpg', 
N'active', 0, N'0', 
CAST(N'2024-03-10T05:35:14.1666667' AS DateTime2), CAST(N'2025-03-29T18:37:34.0566667' AS DateTime2))
GO

-- car 3: Mazda CX-5
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (3, N'Mazda CX-5 2024', 19, N'<p><strong>Mazda CX-5 2024  SUV Sang Tr?ng, V?n Hành M??t Mà</strong></p>
<p>?? <strong>Mazda CX-5 2024</strong> là m?u SUV 5 ch? cao c?p v?i thi?t k? KODO ??y c?m h?ng, ??ng c? SkyActiv và công ngh? i-Activsense tiên ti?n.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? m?nh m?</strong>: 2.0L SkyActiv-G ho?c 2.5L Turbo, v?n hành êm ái.<br>
? <strong>Thi?t k? ??ng c?p</strong>: Ngo?i th?t th? thao, n?i th?t da Nappa cao c?p.<br>
? <strong>Công ngh? hi?n ??i</strong>: Màn hình 10.25 inch, h? th?ng âm thanh Bose 10 loa.<br>
? <strong>An toàn toàn di?n</strong>: i-Activsense v?i 6 túi khí, c?nh báo ?i?m mù, ki?m soát hành trình.<br>
? <strong>Không gian r?ng rãi</strong>: 5 ch? ng?i sang tr?ng, c?p xe 442 lít.<br>
? <strong>Phù h?p cho</strong>: Du l?ch gia ?ình, công tác xa, s? ki?n quan tr?ng.</p>
<p>?? <strong>Thuê Mazda CX-5 2024 ?? tr?i nghi?m s? khác bi?t!</strong> ??</p>', 
CAST(1200000.00 AS Decimal(10, 2)), CAST(1000000.00 AS Decimal(10, 2)), 
N'https://www.planetemazda.com/wp-content/uploads/2023/08/mazda-CX-5-models-KURO.jpg', 
N'active', 0, N'0', 
CAST(N'2024-04-10T05:35:14.1666667' AS DateTime2), CAST(N'2025-03-29T18:36:54.0533333' AS DateTime2))
GO

-- car 4: Toyota Fortuner
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (4, N'Toyota Fortuner 2024', 24, N'<p><strong>Toyota Fortuner 2024  SUV 7 Ch? M?nh M?, V??t M?i ??a Hình</strong></p>
<p>?? <strong>Toyota Fortuner 2024</strong> là m?u SUV 7 ch? hàng ??u v?i kh? n?ng v?n hành m?nh m?, phù h?p cho gia ?ình ?ông ng??i và các chuy?n ?i xa.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? kh?e</strong>: 2.4L/2.8L Turbo Diesel, công su?t 201 mã l?c.<br>
? <strong>Thi?t k? nam tính</strong>: Ngo?i th?t h?m h?, ?èn LED, la-z?ng 18 inch.<br>
? <strong>7 ch? ng?i r?ng rãi</strong>: Gh? da, hàng gh? th? 3 g?p ?i?n, ?i?u hòa 3 vùng ??c l?p.<br>
? <strong>V??t ??a hình</strong>: H? d?n ??ng 4WD, ch? ?? lái ?a ??a hình.<br>
? <strong>An toàn cao c?p</strong>: 7 túi khí, h? th?ng TSS (Toyota Safety Sense).<br>
? <strong>Phù h?p cho</strong>: Du l?ch gia ?ình, ??a ?ón ?oàn, ?i mi?n núi, bi?n.</p>
<p>?? <strong>??t thuê Toyota Fortuner 2024 ngay ?? chinh ph?c m?i hành trình!</strong> ???</p>', 
CAST(1500000.00 AS Decimal(10, 2)), CAST(1300000.00 AS Decimal(10, 2)), 
N'https://images.carexpert.com.au/resize/3000/-/cms/v1/media/2024-04-2024-toyota-fortuner-crusade-my24-stills-13.jpg', 
N'active', 0, N'0', 
CAST(N'2025-02-10T05:35:14.1666667' AS DateTime2), CAST(N'2025-03-29T18:36:31.4233333' AS DateTime2))
GO

-- car 5: Ford Everest
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (5, N'Ford Everest 2024', 25, N'<p><strong>Ford Everest 2024  SUV 7 Ch? Cao C?p, Công Ngh? V??t Tr?i</strong></p>
<p>?? <strong>Ford Everest 2024</strong> là m?u SUV 7 ch? th? h? m?i v?i thi?t k? hi?n ??i, ??ng c? m?nh m? và trang b? công ngh? an toàn hàng ??u phân khúc.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? Bi-Turbo</strong>: 2.0L Bi-Turbo Diesel, 210 mã l?c, mô-men xo?n 500Nm.<br>
? <strong>Thi?t k? ??ng c?p</strong>: L??i t?n nhi?t Matrix, ?èn LED thông minh.<br>
? <strong>N?i th?t sang tr?ng</strong>: Màn hình 12 inch, gh? da cao c?p, c?a s? tr?i toàn c?nh.<br>
? <strong>Công ngh? an toàn</strong>: Ford Co-Pilot360 v?i 9 túi khí.<br>
? <strong>Kh? n?ng v??t ??a hình</strong>: H? 4WD ?i?u khi?n ?i?n t?, ch? ?? lái 7 ??a hình.<br>
? <strong>Phù h?p cho</strong>: Gia ?ình cao c?p, công tác VIP, tour du l?ch h?ng sang.</p>
<p>?? <strong>Thuê Ford Everest 2024  ??ng c?p trong t?m tay!</strong> ?</p>', 
CAST(1600000.00 AS Decimal(10, 2)), CAST(1400000.00 AS Decimal(10, 2)), 
N'https://thaibinhford.com/public/upload/images/hinh_sanpham/ford-everest-the-he-moi-2024-platinum-4x4-at-ford-everest-the-he-moi-2024-platinum-4x4-at-1712982260306.jpg', 
N'active', 1, N'2', 
CAST(N'2024-05-10T05:35:14.1666667' AS DateTime2), CAST(N'2025-03-29T18:21:20.9966667' AS DateTime2))
GO

-- car 6: Toyota Innova
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (6, N'Toyota Innova Cross 2024', 29, N'<p><strong>Toyota Innova Cross 2024  MPV 7 Ch? ?a N?ng, Ti?n Nghi V??t Tr?i</strong></p>
<p>?? <strong>Toyota Innova Cross 2024</strong> là m?u MPV 7 ch? th? h? m?i v?i thi?t k? crossover hi?n ??i, không gian r?ng rãi và trang b? công ngh? tiên ti?n.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? Hybrid</strong>: 2.0L k?t h?p ??ng c? ?i?n, ti?t ki?m nhiên li?u t?i ?u.<br>
? <strong>Thi?t k? crossover</strong>: Ngo?i th?t tr? trung, g?m xe cao 200mm.<br>
? <strong>Không gian 7 ch?</strong>: Hàng gh? 2 ki?u Captain Seat, ?i?u hòa 3 vùng.<br>
? <strong>Công ngh? hi?n ??i</strong>: Màn hình 10 inch, Toyota Safety Sense.<br>
? <strong>V?n hành êm ái</strong>: H? th?ng treo c?i ti?n, cách âm t?t.<br>
? <strong>Phù h?p cho</strong>: Gia ?ình, ??a ?ón sân bay, tour du l?ch 7 ng??i.</p>
<p>?? <strong>??t xe Toyota Innova Cross 2024 ngay hôm nay!</strong> ?</p>', 
CAST(1000000.00 AS Decimal(10, 2)), CAST(850000.00 AS Decimal(10, 2)), 
N'https://drive.gianhangvn.com/image/9lhcu5l-2519801j24864.jpg', 
N'active', 0, N'0', 
CAST(N'2025-02-10T05:35:14.1666667' AS DateTime2), CAST(N'2025-03-29T18:36:12.8733333' AS DateTime2))
GO

-- car 7: Ford Transit
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (7, N'Ford Transit 16 Ch? 2024', 33, N'<p><strong>Ford Transit 16 Ch? 2024  Xe Khách ?a D?ng, R?ng Rãi, An Toàn</strong></p>
<p>?? <strong>Ford Transit 16 ch? 2024</strong> là l?a ch?n hàng ??u cho d?ch v? v?n chuy?n hành khách, tour du l?ch và ??a ?ón nhóm ?ông ng??i v?i không gian r?ng rãi và ti?n nghi.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? m?nh m?</strong>: 2.0L TDCi Turbo Diesel, 170 mã l?c.<br>
? <strong>16 ch? ng?i ti?n nghi</strong>: Gh? b?c da/n?, ?i?u hòa 2 chi?u, c?a s? tr?i.<br>
? <strong>Khoang hành lý r?ng</strong>: C?p sau và khoang trên ??u ?? ??.<br>
? <strong>An toàn cao</strong>: ABS, EBD, c?nh báo áp su?t l?p, camera lùi.<br>
? <strong>Ti?n nghi gi?i trí</strong>: Màn hình DVD, micro karaoke (tùy ch?n).<br>
? <strong>Phù h?p cho</strong>: Tour du l?ch, ??a ?ón công nhân, s? ki?n, d?ch v? limousine.</p>
<p>?? <strong>Thuê Ford Transit 16 ch?  Gi?i pháp v?n chuy?n nhóm hoàn h?o!</strong> ??</p>', 
CAST(1800000.00 AS Decimal(10, 2)), CAST(1600000.00 AS Decimal(10, 2)), 
N'https://ford-benthanh.net/wp-content/uploads/2024/05/z5633379037721_b02b79cfaedf6f83156c258c4c0837a0.jpg', 
N'active', 0, N'0', 
CAST(N'2024-07-10T05:35:14.1666667' AS DateTime2), CAST(N'2025-03-29T18:35:49.2233333' AS DateTime2))
GO

-- car 8: Mercedes C-Class
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (8, N'Mercedes C200 2024', 42, N'<p><strong>Mercedes C200 2024  Sedan H?ng Sang, ??ng C?p Doanh Nhân</strong></p>
<p>?? <strong>Mercedes C200 2024</strong> là bi?u t??ng c?a s? sang tr?ng và ??ng c?p, l?a ch?n hoàn h?o cho doanh nhân và khách hàng VIP.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? êm ái</strong>: 1.5L Turbo k?t h?p công ngh? EQ Boost, 204 mã l?c.<br>
? <strong>Thi?t k? sang tr?ng</strong>: L??i t?n nhi?t ngôi sao, ?èn LED thông minh.<br>
? <strong>N?i th?t xa hoa</strong>: Gh? da Nappa, màn hình kép 12.3 inch, h? th?ng MBUX.<br>
? <strong>Công ngh? an toàn</strong>: 9 túi khí, h? tr? ?? xe t? ??ng, cruise control thích ?ng.<br>
? <strong>Âm thanh cao c?p</strong>: H? th?ng Burmester 15 loa.<br>
? <strong>Phù h?p cho</strong>: ?ón ti?p khách VIP, s? ki?n quan tr?ng, c??i h?i cao c?p.</p>
<p>?? <strong>Thuê Mercedes C200 2024  Kh?ng ??nh ??ng c?p!</strong> ?</p>', 
CAST(2500000.00 AS Decimal(10, 2)), CAST(2200000.00 AS Decimal(10, 2)), 
N'https://images.drive.com.au/driveau/image/upload/t_wp-default/v1/cms/uploads/pd7cptqcdxjwgv0vzc8s', 
N'active', 0, N'0', 
CAST(N'2024-08-10T05:35:14.1666667' AS DateTime2), CAST(N'2025-02-10T05:35:14.1666667' AS DateTime2))
GO

-- car 9: BMW 5 Series
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (9, N'BMW 530i 2024', 46, N'<p><strong>BMW 530i 2024  Sedan Th? Thao, Công Ngh? ??nh Cao</strong></p>
<p>?? <strong>BMW 530i 2024</strong> k?t h?p hoàn h?o gi?a s?c m?nh v?n hành th? thao và công ngh? tiên ti?n, dành cho nh?ng ng??i yêu thích tr?i nghi?m lái xe ??ng c?p.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? m?nh m?</strong>: 2.0L TwinPower Turbo, 252 mã l?c.<br>
? <strong>Thi?t k? th? thao</strong>: L??i t?n nhi?t kidney ??c tr?ng, ?èn laser.<br>
? <strong>N?i th?t hi?n ??i</strong>: Màn hình c?m ?ng 12.3 inch, gh? da Vernasca, c?a s? tr?i.<br>
? <strong>Công ngh? BMW iDrive</strong>: ?i?u khi?n b?ng gi?ng nói, k?t n?i không dây.<br>
? <strong>H? th?ng âm thanh</strong>: Harman Kardon 16 loa.<br>
? <strong>Phù h?p cho</strong>: Doanh nhân, s? ki?n cao c?p, xe c??i h?ng sang.</p>
<p>?? <strong>Thuê BMW 530i 2024  Tr?i nghi?m ??ng c?p Bavaria!</strong> ??</p>', 
CAST(2800000.00 AS Decimal(10, 2)), CAST(2500000.00 AS Decimal(10, 2)), 
N'https://hips.hearstapps.com/hmg-prod/images/2024-bmw-530i-xdrive-118-65808a4c3d44a.jpg?crop=0.561xw:0.474xh;0.171xw,0.327xh&resize=1200:*', 
N'active', 0, N'0', 
CAST(N'2025-02-10T05:35:14.1666667' AS DateTime2), CAST(N'2025-03-29T18:35:32.9733333' AS DateTime2))
GO

-- car 10: Hyundai Accent
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (10, N'Hyundai Accent 2024', 14, N'<p><strong>Hyundai Accent 2024  Sedan Thông Minh, Ti?t Ki?m, ?áng Tin C?y</strong></p>
<p>?? <strong>Hyundai Accent 2024</strong> là m?u sedan h?ng B v?i thi?t k? hi?n ??i, trang b? ??y ?? ti?n nghi và giá thuê h?p lý, phù h?p cho m?i nhu c?u di chuy?n.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? Smartstream</strong>: 1.5L, 115 mã l?c, ti?t ki?m nhiên li?u.<br>
? <strong>Thi?t k? hi?n ??i</strong>: Ngo?i th?t th? thao, ?èn LED, la-z?ng 15 inch.<br>
? <strong>N?i th?t ti?n nghi</strong>: Màn hình 8 inch, k?t n?i Apple CarPlay/Android Auto.<br>
? <strong>An toàn thông minh</strong>: 6 túi khí, c?m bi?n lùi, camera 360 ??.<br>
? <strong>Không gian r?ng rãi</strong>: 5 ch? ng?i tho?i mái, c?p xe 475 lít.<br>
? <strong>Phù h?p cho</strong>: ?i công tác, taxi công ngh?, thuê tháng cho cá nhân.</p>
<p>?? <strong>Thuê Hyundai Accent 2024  L?a ch?n thông minh cho m?i hành trình!</strong> ?</p>', 
CAST(550000.00 AS Decimal(10, 2)), CAST(480000.00 AS Decimal(10, 2)), 
N'https://hyundaibinhduong.com/wp-content/uploads/2023/10/Accent-all-new-thumb-02.png', 
N'active', 0, N'0', 
CAST(N'2025-02-10T05:35:14.1666667' AS DateTime2), CAST(N'2025-03-29T18:35:15.5866667' AS DateTime2))
GO

-- car 11: Mazda 3
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (11, N'Mazda 3 2024', 15, N'<p><strong>Mazda 3 2024  Sedan Th? Thao, Sang Tr?ng, V?n Hành ??nh Cao</strong></p>
<p>?? <strong>Mazda 3 2024</strong> là m?u sedan h?ng C n?i b?t v?i thi?t k? KODO ??ng c?p, công ngh? SkyActiv và tr?i nghi?m lái xe th? thao.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? SkyActiv</strong>: 2.0L, 153 mã l?c, v?n hành m??t mà.<br>
? <strong>Thi?t k? ??p m?t</strong>: Ngo?i th?t sang tr?ng, ?èn LED Matrix, la-z?ng 18 inch.<br>
? <strong>N?i th?t cao c?p</strong>: Gh? da cao c?p, màn hình 8.8 inch, âm thanh Bose 12 loa.<br>
? <strong>Công ngh? i-Activsense</strong>: H? tr? phanh thông minh, c?nh báo ?i?m mù.<br>
? <strong>V?n hành th? thao</strong>: H? th?ng G-Vectoring Control Plus, lái chính xác.<br>
? <strong>Phù h?p cho</strong>: Doanh nhân tr?, công tác, du l?ch t? lái.</p>
<p>?? <strong>Thuê Mazda 3 2024  C?m nh?n s? khác bi?t!</strong> ??</p>', 
CAST(750000.00 AS Decimal(10, 2)), CAST(650000.00 AS Decimal(10, 2)), 
N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYli5hidQc8fj0Y7czy1y9T52wiktrim1pHw&s', 
N'active', 0, N'2', 
CAST(N'2025-02-10T05:35:14.1666667' AS DateTime2), CAST(N'2025-03-29T18:23:52.0366667' AS DateTime2))
GO

-- car 12: Kia Cerato
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (12, N'Kia Cerato 2024', 16, N'<p><strong>Kia Cerato 2024  Sedan Hi?n ??i, ??y ?? Tính N?ng, Giá H?p Lý</strong></p>
<p>?? <strong>Kia Cerato 2024</strong> là m?u sedan h?ng C v?i thi?t k? tr? trung, trang b? công ngh? hi?n ??i và không gian n?i th?t r?ng rãi, phù h?p cho gia ?ình và doanh nghi?p.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? Smartstream</strong>: 1.5L Turbo ho?c 2.0L, công su?t 158 mã l?c.<br>
? <strong>Thi?t k? tr? trung</strong>: L??i t?n nhi?t Tiger Nose, ?èn LED chi?u sáng ban ngày.<br>
? <strong>N?i th?t ti?n nghi</strong>: Màn hình 10.25 inch, vô l?ng b?c da, gh? da cao c?p.<br>
? <strong>Công ngh? an toàn</strong>: 6 túi khí, c?nh báo va ch?m, h? tr? gi? làn.<br>
? <strong>Ti?t ki?m nhiên li?u</strong>: Ch? 5.5L/100km, phù h?p di chuy?n ???ng dài.<br>
? <strong>Phù h?p cho</strong>: Taxi công ngh?, thuê dài h?n, công tác trong thành ph?.</p>
<p>?? <strong>??t thuê Kia Cerato 2024  Gi?i pháp di chuy?n thông minh!</strong> ?</p>', 
CAST(650000.00 AS Decimal(10, 2)), CAST(550000.00 AS Decimal(10, 2)), 
N'https://camco.vn/wp-content/uploads/2024/08/cam-xe-ngan-hang-uy-tin1-scaled.jpg', 
N'active', 0, N'1', 
CAST(N'2025-02-10T08:08:36.0633333' AS DateTime2), CAST(N'2025-03-29T18:31:28.0800000' AS DateTime2))
GO

-- car 13: Honda CR-V
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (13, N'Honda CR-V 2024', 18, N'<p><strong>Honda CR-V 2024  SUV 5 Ch? ?a N?ng, An Toàn, Ti?n Nghi</strong></p>
<p>?? <strong>Honda CR-V 2024</strong> là m?u SUV 5 ch? bán ch?y nh?t phân khúc v?i thi?t k? sang tr?ng, công ngh? Honda Sensing và không gian linh ho?t.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? VTEC Turbo</strong>: 1.5L Turbo, 188 mã l?c, v?n hành êm ái.<br>
? <strong>Thi?t k? th? thao</strong>: Ngo?i th?t hi?n ??i, ?èn LED toàn ph?n, la-z?ng 19 inch.<br>
? <strong>N?i th?t cao c?p</strong>: Gh? da, màn hình 9 inch, c?a s? tr?i toàn c?nh.<br>
? <strong>Honda Sensing</strong>: Ki?m soát hành trình thích ?ng, c?nh báo va ch?m, ?èn pha t? ??ng.<br>
? <strong>Không gian linh ho?t</strong>: Gh? sau g?p 60:40, c?p xe 522 lít.<br>
? <strong>Phù h?p cho</strong>: Gia ?ình 4-5 ng??i, công tác, du l?ch cu?i tu?n.</p>
<p>?? <strong>Thuê Honda CR-V 2024  L?a ch?n hoàn h?o cho gia ?ình!</strong> ??</p>', 
CAST(1100000.00 AS Decimal(10, 2)), CAST(950000.00 AS Decimal(10, 2)), 
N'https://i.ytimg.com/vi/tK5PVBxd6QY/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBS7CkupWhHxt72K5XpnANAVHN17g', 
N'active', 0, N'0', 
CAST(N'2025-02-24T10:15:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:34:47.1600000' AS DateTime2))
GO

-- car 14: Hyundai Tucson
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (14, N'Hyundai Tucson 2024', 21, N'<p><strong>Hyundai Tucson 2024  SUV Công Ngh?, Thi?t K? T??ng Lai</strong></p>
<p>?? <strong>Hyundai Tucson 2024</strong> gây ?n t??ng v?i ngôn ng? thi?t k? Parametric Dynamics táo b?o, công ngh? hi?n ??i và ??ng c? Turbo m?nh m?.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? Smartstream</strong>: 1.6L Turbo ho?c 2.0L, công su?t 180 mã l?c.<br>
? <strong>Thi?t k? ??c ?áo</strong>: L??i t?n nhi?t tham s? hóa, ?èn LED ?n.<br>
? <strong>N?i th?t công ngh?</strong>: Màn hình kép 10.25 inch li?n m?ch, HUD.<br>
? <strong>SmartSense</strong>: H? tr? ?? xe t? xa, c?nh báo ?i?m mù, camera 360.<br>
? <strong>Không gian r?ng rãi</strong>: 5 ch? ng?i tho?i mái, c?p 620 lít.<br>
? <strong>Phù h?p cho</strong>: Gia ?ình hi?n ??i, doanh nghi?p, tour du l?ch.</p>
<p>?? <strong>??t xe Hyundai Tucson 2024  Tr?i nghi?m t??ng lai ngay hôm nay!</strong> ??</p>', 
CAST(1150000.00 AS Decimal(10, 2)), CAST(1000000.00 AS Decimal(10, 2)), 
N'https://hyundaitphcm.vn/wp-content/uploads/2024/07/hyundaitphcm.com_.vn-21.jpg', 
N'active', 0, N'0', 
CAST(N'2025-02-24T10:20:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:34:27.4900000' AS DateTime2))
GO

-- car 15: Kia Seltos
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (15, N'Kia Seltos 2024', 22, N'<p><strong>Kia Seltos 2024  SUV Tr? Trung, N?ng ??ng, ??y Cá Tính</strong></p>
<p>?? <strong>Kia Seltos 2024</strong> là m?u SUV ?ô th? v?i thi?t k? th? thao, công ngh? k?t n?i thông minh và kh? n?ng v?n hành linh ho?t trong thành ph?.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? Smartstream</strong>: 1.5L Turbo, 160 mã l?c, h?p s? CVT.<br>
? <strong>Thi?t k? th? thao</strong>: Ngo?i th?t cá tính, ?èn LED, mâm ?úc 18 inch.<br>
? <strong>N?i th?t hi?n ??i</strong>: Màn hình 10.25 inch, vô l?ng D-Cut th? thao.<br>
? <strong>K?t n?i thông minh</strong>: Kia Connect, Apple CarPlay/Android Auto không dây.<br>
? <strong>An toàn toàn di?n</strong>: 6 túi khí, c?nh báo ?i?m mù, camera 360 ??.<br>
? <strong>Phù h?p cho</strong>: Gi?i tr?, gia ?ình nh?, di chuy?n trong thành ph?.</p>
<p>?? <strong>Thuê Kia Seltos 2024  Kh?ng ??nh phong cách cá nhân!</strong> ??</p>', 
CAST(950000.00 AS Decimal(10, 2)), CAST(820000.00 AS Decimal(10, 2)), 
N'https://auto365.vn/uploads/images/tin%20t%E1%BB%A9c/2024/T1/kia-seltos-2024/kia-seltos-2024-1.jpg', 
N'active', 0, N'0', 
CAST(N'2025-02-24T10:25:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:34:07.1066667' AS DateTime2))
GO

-- car 16: Toyota Corolla Cross
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (16, N'Toyota Corolla Cross 2024', 23, N'<p><strong>Toyota Corolla Cross 2024  SUV ?ô Th?, Ti?n Nghi, ?áng Tin C?y</strong></p>
<p>?? <strong>Toyota Corolla Cross 2024</strong> là m?u SUV ?ô th? hoàn h?o v?i thi?t k? th?i th??ng, công ngh? an toàn Toyota Safety Sense và ?? tin c?y cao.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? Hybrid</strong>: 1.8L k?t h?p ??ng c? ?i?n, ti?t ki?m t?i ?u.<br>
? <strong>Thi?t k? ?ô th?</strong>: Ngo?i th?t hi?n ??i, g?m cao 161mm.<br>
? <strong>N?i th?t ti?n nghi</strong>: Màn hình 9 inch, gh? da, c?a s? tr?i.<br>
? <strong>Toyota Safety Sense</strong>: C?nh báo va ch?m, h? tr? gi? làn, cruise control.<br>
? <strong>Không gian linh ho?t</strong>: 5 ch? r?ng rãi, c?p 440 lít.<br>
? <strong>Phù h?p cho</strong>: Gia ?ình ?ô th?, công tác, thuê tháng dài h?n.</p>
<p>?? <strong>??t thuê Toyota Corolla Cross 2024 ngay!</strong> ?</p>', 
CAST(900000.00 AS Decimal(10, 2)), CAST(780000.00 AS Decimal(10, 2)), 
N'https://images2.thanhnien.vn/528068263637045248/2024/4/7/toyota-corolla-cross-2024-ban-ra-tai-viet-nam-tu-thang-5-1-xe-thanhnien-1712485293977811861623.jpg', 
N'active', 0, N'0', 
CAST(N'2025-02-24T10:30:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:33:47.7000000' AS DateTime2))
GO

-- car 17: Mitsubishi Xpander
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (17, N'Mitsubishi Xpander 2024', 28, N'<p><strong>Mitsubishi Xpander 2024  MPV 7 Ch? Linh Ho?t, Ti?t Ki?m, ?a D?ng</strong></p>
<p>?? <strong>Mitsubishi Xpander 2024</strong> là m?u MPV 7 ch? ph? bi?n v?i thi?t k? crossover, không gian linh ho?t và giá thuê h?p lý cho gia ?ình.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? MIVEC</strong>: 1.5L, 105 mã l?c, ti?t ki?m nhiên li?u.<br>
? <strong>Thi?t k? crossover</strong>: Ngo?i th?t th? thao, g?m cao 225mm.<br>
? <strong>Không gian 7 ch?</strong>: Hàng gh? 3 g?p 50:50, c?p r?ng 350 lít.<br>
? <strong>Ti?n nghi ??y ??</strong>: Màn hình 9 inch, ?i?u hòa t? ??ng, c?m bi?n lùi.<br>
? <strong>An toàn c? b?n</strong>: ABS, EBD, 2 túi khí, khung xe ch?c ch?n.<br>
? <strong>Phù h?p cho</strong>: Gia ?ình 5-7 ng??i, tour ng?n ngày, taxi công ngh?.</p>
<p>?? <strong>Thuê Mitsubishi Xpander 2024  Gi?i pháp ?a d?ng cho gia ?ình!</strong> ???????????</p>', 
CAST(750000.00 AS Decimal(10, 2)), CAST(650000.00 AS Decimal(10, 2)), 
N'https://static.vnfinance.vn/files/admin/2024/09/23/mitsubishi-xpander-2024-ra-mat-voi-thiet-ke-dep-long-lanh-trang-bi-cuc-chat-gia-tu-541-trieu-dong-anh-1-1157091.jpg', 
N'active', 0, N'0', 
CAST(N'2025-02-24T10:35:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:33:27.5400000' AS DateTime2))
GO

-- car 18: Hyundai SantaFe
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (18, N'Hyundai SantaFe 2024', 27, N'<p><strong>Hyundai SantaFe 2024  SUV 7 Ch? Cao C?p, Sang Tr?ng, M?nh M?</strong></p>
<p>?? <strong>Hyundai SantaFe 2024</strong> là m?u SUV 7 ch? cao c?p v?i thi?t k? hi?n ??i, công ngh? v??t tr?i và không gian n?i th?t sang tr?ng.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? Smartstream</strong>: 2.5L Turbo ho?c Hybrid, 281 mã l?c.<br>
? <strong>Thi?t k? ?n t??ng</strong>: Ngo?i th?t hi?n ??i, ?èn LED ?n tham s? hóa.<br>
? <strong>N?i th?t h?ng sang</strong>: Gh? da Nappa, màn hình 12.3 inch kép, HUD.<br>
? <strong>Công ngh? SmartSense</strong>: H? tr? ?? xe t? xa, ki?m soát hành trình thông minh.<br>
? <strong>7 ch? r?ng rãi</strong>: Hàng gh? 2 Captain Seat, c?p 571 lít.<br>
? <strong>Phù h?p cho</strong>: Gia ?ình cao c?p, doanh nghi?p, tour du l?ch VIP.</p>
<p>?? <strong>??t thuê Hyundai SantaFe 2024  ??ng c?p SUV 7 ch?!</strong> ?</p>', 
CAST(1400000.00 AS Decimal(10, 2)), CAST(1200000.00 AS Decimal(10, 2)), 
N'https://hyundaitaydo.vn/wp-content/uploads/2023/11/Hyundai-Santafe-White-Rung-29.webp', 
N'active', 0, N'0', 
CAST(N'2025-02-24T10:40:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:33:08.0166667' AS DateTime2))
GO

-- car 19: Mazda CX-8
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (19, N'Mazda CX-8 2024', 26, N'<p><strong>Mazda CX-8 2024  SUV 7 Ch? Cao C?p, Sang Tr?ng, V?n Hành M??t Mà</strong></p>
<p>?? <strong>Mazda CX-8 2024</strong> là m?u SUV 7 ch? cao c?p v?i thi?t k? KODO ??ng c?p, công ngh? SkyActiv và tr?i nghi?m lái xe th? thao.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? SkyActiv</strong>: 2.5L Turbo, 230 mã l?c, v?n hành êm ái.<br>
? <strong>Thi?t k? sang tr?ng</strong>: Ngo?i th?t ??ng c?p, n?i th?t da Nappa cao c?p.<br>
? <strong>Không gian 7 ch?</strong>: Hàng gh? 2 Captain Seat, c?p 209 lít (3 hàng gh?).<br>
? <strong>Công ngh? i-Activsense</strong>: H? tr? phanh thông minh, c?nh báo ?i?m mù, cruise control.<br>
? <strong>Âm thanh Bose</strong>: H? th?ng 10 loa cao c?p.<br>
? <strong>Phù h?p cho</strong>: Gia ?ình th??ng l?u, khách VIP, s? ki?n cao c?p.</p>
<p>?? <strong>Thuê Mazda CX-8 2024  Tr?i nghi?m ??ng c?p Nh?t B?n!</strong> ??</p>', 
CAST(1300000.00 AS Decimal(10, 2)), CAST(1150000.00 AS Decimal(10, 2)), 
N'https://cafefcdn.com/203337114487263232/2024/12/2/mazda-cx-8-5-1667563474011426380518-1733107926759-17331079269182058619599.jpg', 
N'active', 0, N'0', 
CAST(N'2025-02-24T10:45:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:32:42.2200000' AS DateTime2))
GO

-- car 20: Ford Ranger
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (20, N'Ford Ranger Wildtrak 2024', 64, N'<p><strong>Ford Ranger Wildtrak 2024  Bán T?i M?nh M?, ?a D?ng, V??t M?i ??a Hình</strong></p>
<p>?? <strong>Ford Ranger Wildtrak 2024</strong> là m?u bán t?i cao c?p v?i ??ng c? Bi-Turbo m?nh m?, kh? n?ng v??t ??a hình t?t và ti?n nghi nh? SUV.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? Bi-Turbo</strong>: 2.0L Bi-Turbo Diesel, 210 mã l?c, mô-men xo?n 500Nm.<br>
? <strong>Thi?t k? m?nh m?</strong>: Ngo?i th?t h?m h?, ?èn LED Matrix, mâm 18 inch.<br>
? <strong>N?i th?t cao c?p</strong>: Gh? da, màn hình 12 inch SYNC 4, âm thanh B&O.<br>
? <strong>Công ngh? an toàn</strong>: Ford Co-Pilot360, 7 túi khí.<br>
? <strong>Kh? n?ng ??a hình</strong>: H? 4WD ?i?n t?, ch? ?? lái 6 ??a hình.<br>
? <strong>Phù h?p cho</strong>: V?n chuy?n hàng hóa, du l?ch off-road, ?i mi?n núi.</p>
<p>?? <strong>Thuê Ford Ranger Wildtrak 2024  Chinh ph?c m?i th? thách!</strong> ???</p>', 
CAST(1500000.00 AS Decimal(10, 2)), CAST(1350000.00 AS Decimal(10, 2)), 
N'https://www.ford.com.vn/content/dam/Ford/vn/nameplate/ranger/model/wildtrak/colorizer/360/%C4%91en/vn-wildtrak-absolute-black-01.webp', 
N'active', 0, N'0', 
CAST(N'2025-02-24T10:50:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:32:15.3233333' AS DateTime2))
GO

-- car 21: Toyota Hilux
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (21, N'Toyota Hilux 2024', 65, N'<p><strong>Toyota Hilux 2024  Bán T?i B?n B?, Tin C?y, Kinh T?</strong></p>
<p>?? <strong>Toyota Hilux 2024</strong> là bi?u t??ng c?a s? b?n b? và ?? tin c?y trong phân khúc bán t?i, phù h?p cho m?i công vi?c t? v?n chuy?n ??n off-road.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? b?n b?</strong>: 2.4L/2.8L Turbo Diesel, 204 mã l?c.<br>
? <strong>Thi?t k? m?nh m?</strong>: Ngo?i th?t nam tính, ?èn LED, mâm h?p kim.<br>
? <strong>N?i th?t ti?n nghi</strong>: Gh? da, màn hình 8 inch, ?i?u hòa t? ??ng.<br>
? <strong>An toàn Toyota</strong>: TSS (Toyota Safety Sense), 7 túi khí.<br>
? <strong>Kh? n?ng ??a hình</strong>: H? 4WD, khung g?m ch?c ch?n, t?i tr?ng 1 t?n.<br>
? <strong>Phù h?p cho</strong>: V?n chuy?n hàng, ?i công tr??ng, du l?ch off-road.</p>
<p>?? <strong>Thuê Toyota Hilux 2024  B?n b? v??t th?i gian!</strong> ??</p>', 
CAST(1400000.00 AS Decimal(10, 2)), CAST(1250000.00 AS Decimal(10, 2)), 
N'https://media.vov.vn/sites/default/files/styles/large/public/2024-02/toyota-hilux-2024-1-5560-1706861408.jpg', 
N'active', 0, N'0', 
CAST(N'2025-02-24T10:55:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:29:57.7733333' AS DateTime2))
GO

-- car 22: Hyundai Solati
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (22, N'Hyundai Solati 16 Ch? 2024', 34, N'<p><strong>Hyundai Solati 16 Ch? 2024  Xe Khách Cao C?p, Ti?n Nghi, An Toàn</strong></p>
<p>?? <strong>Hyundai Solati 16 ch? 2024</strong> là m?u xe khách cao c?p v?i thi?t k? hi?n ??i, n?i th?t sang tr?ng và công ngh? an toàn v??t tr?i.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? D4CB</strong>: 2.5L CRDi Turbo Diesel, 150 mã l?c.<br>
? <strong>16 ch? ng?i sang tr?ng</strong>: Gh? da cao c?p, ?i?u hòa 2 chi?u ??c l?p.<br>
? <strong>N?i th?t hi?n ??i</strong>: Màn hình gi?i trí, ?èn LED, c?a s? kính t?i màu.<br>
? <strong>An toàn toàn di?n</strong>: ABS, EBD, c?m bi?n lùi, camera 360 ??.<br>
? <strong>Ti?n nghi cao c?p</strong>: C?a t? ??ng, khoang hành lý r?ng rãi.<br>
? <strong>Phù h?p cho</strong>: Tour du l?ch cao c?p, ??a ?ón ?oàn, d?ch v? limousine.</p>
<p>?? <strong>Thuê Hyundai Solati 16 ch?  ??ng c?p d?ch v? v?n chuy?n!</strong> ?</p>', 
CAST(1700000.00 AS Decimal(10, 2)), CAST(1500000.00 AS Decimal(10, 2)), 
N'https://hyundaivn.com.vn/wp-content/uploads/2023/09/hyundai-solati-dl-2024-ghe-xe-bus-1024x614.jpg', 
N'active', 0, N'0', 
CAST(N'2025-02-24T11:00:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:29:35.7866667' AS DateTime2))
GO
-- car 23: Mercedes GLC
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (23, N'Mercedes GLC 300 2024', 48, N'<p><strong>Mercedes GLC 300 2024  SUV H?ng Sang, ??ng C?p, Công Ngh? ??nh Cao</strong></p>
<p>?? <strong>Mercedes GLC 300 2024</strong> là m?u SUV h?ng sang v?i thi?t k? tinh t?, công ngh? MBUX thông minh và tr?i nghi?m lái xe ??ng c?p.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? m?nh m?</strong>: 2.0L Turbo k?t h?p công ngh? EQ Boost, 258 mã l?c.<br>
? <strong>Thi?t k? sang tr?ng</strong>: Ngo?i th?t ??ng c?p, ?èn LED thông minh, mâm AMG 20 inch.<br>
? <strong>N?i th?t xa hoa</strong>: Gh? da Nappa, màn hình kép 12.3 inch, c?a s? tr?i toàn c?nh.<br>
? <strong>Công ngh? MBUX</strong>: ?i?u khi?n gi?ng nói "Hey Mercedes", k?t n?i không dây.<br>
? <strong>Âm thanh Burmester</strong>: H? th?ng 13 loa cao c?p.<br>
? <strong>Phù h?p cho</strong>: Khách VIP, doanh nhân, s? ki?n cao c?p, xe c??i sang tr?ng.</p>
<p>?? <strong>Thuê Mercedes GLC 300 2024  Bi?u t??ng ??ng c?p!</strong> ??</p>', 
CAST(2800000.00 AS Decimal(10, 2)), CAST(2500000.00 AS Decimal(10, 2)), 
N'https://mercedeshaxaco.com.vn/wp-content/uploads/mercedes-benz-glc-300-4matic-all-new-2023-2024-2025-2026-2027-2028-noi-that-ngoai-that-mercedeshaxaco-com-vn-3.jpg', 
N'active', 0, N'0', 
CAST(N'2025-02-25T10:00:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:29:15.0066667' AS DateTime2))
GO

-- car 24: BMW X3
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (24, N'BMW X3 xDrive30i 2024', 49, N'<p><strong>BMW X3 xDrive30i 2024  SUV Th? Thao, Sang Tr?ng, V?n Hành ??nh Cao</strong></p>
<p>?? <strong>BMW X3 xDrive30i 2024</strong> k?t h?p hoàn h?o gi?a thi?t k? th? thao, công ngh? hi?n ??i và tr?i nghi?m lái xe ??m ch?t BMW.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? TwinPower</strong>: 2.0L TwinPower Turbo, 248 mã l?c.<br>
? <strong>Thi?t k? th? thao</strong>: L??i t?n nhi?t kidney l?n, ?èn LED Adaptive, M Sport Package.<br>
? <strong>N?i th?t cao c?p</strong>: Gh? da Vernasca, màn hình 12.3 inch, c?a s? tr?i toàn c?nh.<br>
? <strong>Công ngh? iDrive 8</strong>: ?i?u khi?n c? ch?, tr? lý ?o BMW Intelligent Personal Assistant.<br>
? <strong>H? d?n ??ng xDrive</strong>: 4 bánh toàn th?i gian, v?n hành m??t mà m?i ??a hình.<br>
? <strong>Phù h?p cho</strong>: Doanh nhân, khách VIP, s? ki?n cao c?p, xe c??i h?ng sang.</p>
<p>?? <strong>Thuê BMW X3 2024  Tr?i nghi?m The Ultimate Driving Machine!</strong> ??</p>', 
CAST(2900000.00 AS Decimal(10, 2)), CAST(2600000.00 AS Decimal(10, 2)), 
N'https://hips.hearstapps.com/hmg-prod/images/2024-bmw-x3-101-64e782a68ab3d.jpg?crop=0.945xw:0.809xh;0,0.156xh&resize=2048:*', 
N'active', 0, N'0', 
CAST(N'2025-02-25T10:05:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:28:56.0200000' AS DateTime2))
GO

-- car 25: Lexus RX
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (25, N'Lexus RX 350 2024', 51, N'<p><strong>Lexus RX 350 2024  SUV H?ng Sang, Êm Ái, ??ng C?p Nh?t B?n</strong></p>
<p>?? <strong>Lexus RX 350 2024</strong> là m?u SUV h?ng sang v?i thi?t k? tinh t?, n?i th?t xa hoa và ?? êm ái v??t tr?i, ??i di?n cho ??ng c?p Omotenashi c?a Nh?t B?n.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? V6</strong>: 3.5L V6, 295 mã l?c, v?n hành êm ái tuy?t ??i.<br>
? <strong>Thi?t k? Spindle Grille</strong>: Ngo?i th?t sang tr?ng ??c tr?ng Lexus.<br>
? <strong>N?i th?t ngh? thu?t</strong>: Gh? da Semi-Aniline, g? Shimamoku, màn hình 12.3 inch.<br>
? <strong>Lexus Safety System+</strong>: Công ngh? an toàn tiên ti?n nh?t.<br>
? <strong>Âm thanh Mark Levinson</strong>: H? th?ng 15 loa cao c?p.<br>
? <strong>Phù h?p cho</strong>: Khách VIP cao c?p, doanh nhân th??ng l?u, s? ki?n ??ng c?p.</p>
<p>?? <strong>Thuê Lexus RX 350 2024  ??ng c?p Takumi Nh?t B?n!</strong> ????</p>', 
CAST(3200000.00 AS Decimal(10, 2)), CAST(2900000.00 AS Decimal(10, 2)), 
N'https://www.lexus.com.vn/content/dam/lexus-v3-blueprint/models/suv/rx/rx-350/my23/overview/lexus-rx-350-overview-mgp.jpg', 
N'active', 0, N'0', 
CAST(N'2024-11-25T10:10:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:28:36.1900000' AS DateTime2))
GO

-- car 26: VinFast VF8
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (26, N'VinFast VF8 Plus 2024', 69, N'<p><strong>VinFast VF8 Plus 2024  SUV ?i?n Vi?t Nam, Công Ngh? Xanh, Hi?n ??i</strong></p>
<p>?? <strong>VinFast VF8 Plus 2024</strong> là m?u SUV ?i?n 5 ch? ??u tiên c?a Vi?t Nam v?i công ngh? hi?n ??i, thân thi?n môi tr??ng và chi phí v?n hành siêu ti?t ki?m.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? ?i?n</strong>: 2 mô-t? ?i?n, t?ng công su?t 402 mã l?c.<br>
? <strong>Ph?m vi ho?t ??ng</strong>: 447km/l?n s?c ??y (chu?n WLTP).<br>
? <strong>Thi?t k? hi?n ??i</strong>: Ngo?i th?t th? thao, ?èn LED Matrix, mâm 20 inch.<br>
? <strong>N?i th?t công ngh?</strong>: Màn hình 15.6 inch, gh? da cao c?p, c?a s? tr?i toàn c?nh.<br>
? <strong>Công ngh? ADAS</strong>: H? tr? lái bán t? ??ng c?p ?? 2, 11 túi khí.<br>
? <strong>Phù h?p cho</strong>: Khách ?a công ngh? xanh, di chuy?n trong thành ph?, doanh nghi?p.</p>
<p>?? <strong>Thuê VinFast VF8  Tr?i nghi?m xe ?i?n Made in Vietnam!</strong> ?????</p>', 
CAST(1300000.00 AS Decimal(10, 2)), CAST(1100000.00 AS Decimal(10, 2)), 
N'https://i.gaw.to/vehicles/photos/40/36/403626-2024-vinfast-vf-8.jpg?640x400', 
N'active', 0, N'0', 
CAST(N'2025-02-25T10:15:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:28:17.7800000' AS DateTime2))
GO

-- car 27: Kia Carnival
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (27, N'Kia Carnival 2024', 32, N'<p><strong>Kia Carnival 2024  MPV Cao C?p, Sang Tr?ng, ?a N?ng</strong></p>
<p>?? <strong>Kia Carnival 2024</strong> là m?u MPV cao c?p v?i thi?t k? sang tr?ng, không gian r?ng rãi và trang b? ti?n nghi ??ng c?p, x?ng danh "Limousine 7 ch?".</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? Smartstream</strong>: 2.2L Diesel ho?c 3.5L V6, công su?t 202-294 mã l?c.<br>
? <strong>Thi?t k? sang tr?ng</strong>: Ngo?i th?t ??ng c?p, ?èn LED chi?u xa, la-z?ng 19 inch.<br>
? <strong>N?i th?t VIP</strong>: Gh? Captain Seat v?i massage/s??i/làm mát, c?a tr??t ?i?n 2 bên.<br>
? <strong>Công ngh? gi?i trí</strong>: Màn hình kép 12.3 inch, màn hình tr?n 12.3 inch cho hàng gh? sau.<br>
? <strong>An toàn toàn di?n</strong>: 9 túi khí, ADAS c?p ?? 2.<br>
? <strong>Phù h?p cho</strong>: Gia ?ình cao c?p, ??a ?ón VIP, d?ch v? limousine 7 ch?.</p>
<p>?? <strong>Thuê Kia Carnival 2024  MPV ??ng c?p Limousine!</strong> ??</p>', 
CAST(1600000.00 AS Decimal(10, 2)), CAST(1400000.00 AS Decimal(10, 2)), 
N'https://www.bisonic.vn/wp-content/uploads/2024/03/kia-carnival-2022.jpg', 
N'active', 0, N'0', 
CAST(N'2024-12-25T10:20:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:27:54.7966667' AS DateTime2))
GO

-- car 28: Suzuki Ertiga
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (28, N'Suzuki Ertiga 2024', 31, N'<p><strong>Suzuki Ertiga 2024  MPV 7 Ch? Ti?t Ki?m, Linh Ho?t, Phù H?p Gia ?ình</strong></p>
<p>?? <strong>Suzuki Ertiga 2024</strong> là m?u MPV 7 ch? v?i thi?t k? nh? g?n, ti?t ki?m nhiên li?u và giá thuê h?p lý, lý t??ng cho gia ?ình và taxi công ngh?.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? ti?t ki?m</strong>: 1.5L VVT, 105 mã l?c, tiêu th? ch? 5.4L/100km.<br>
? <strong>Thi?t k? nh? g?n</strong>: D? lái trong thành ph?, g?m cao 180mm.<br>
? <strong>7 ch? linh ho?t</strong>: Hàng gh? 3 g?p 50:50, c?p 153 lít (3 hàng gh?).<br>
? <strong>Ti?n nghi c? b?n</strong>: Màn hình 7 inch, ?i?u hòa 2 vùng, c?m bi?n lùi.<br>
? <strong>An toàn ??y ??</strong>: ABS, EBD, 2 túi khí, khung xe Tect.<br>
? <strong>Phù h?p cho</strong>: Gia ?ình nh? 5-7 ng??i, taxi công ngh?, thuê tháng giá t?t.</p>
<p>?? <strong>Thuê Suzuki Ertiga 2024  Gi?i pháp MPV ti?t ki?m!</strong> ??</p>', 
CAST(650000.00 AS Decimal(10, 2)), CAST(550000.00 AS Decimal(10, 2)), 
N'https://giaxeoto.vn/admin/upload/images/suzuki-ertiga-2024-danh-gia-xe-gia-lan-banh-uu-dai-012024-1704852153.jpg', 
N'active', 0, N'0', 
CAST(N'2025-02-25T10:25:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:27:03.4100000' AS DateTime2))
GO

-- car 29: Honda Accord
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (29, N'Honda Accord 2024', 57, N'<p><strong>Honda Accord 2024  Sedan H?ng D, Sang Tr?ng, Công Ngh? Hi?n ??i</strong></p>
<p>?? <strong>Honda Accord 2024</strong> là m?u sedan h?ng D v?i thi?t k? thanh l?ch, ??ng c? m?nh m? và công ngh? Honda Sensing tiên ti?n.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? VTEC Turbo</strong>: 1.5L Turbo, 192 mã l?c, v?n hành m?nh m?.<br>
? <strong>Thi?t k? thanh l?ch</strong>: Ngo?i th?t sang tr?ng, ?èn LED toàn ph?n, mâm 18 inch.<br>
? <strong>N?i th?t cao c?p</strong>: Gh? da, màn hình 12.3 inch, HUD, c?a s? tr?i.<br>
? <strong>Honda Sensing</strong>: Cruise control thích ?ng, c?nh báo va ch?m, ?èn pha t? ??ng.<br>
? <strong>Không gian r?ng rãi</strong>: 5 ch? tho?i mái, c?p 473 lít.<br>
? <strong>Phù h?p cho</strong>: Doanh nhân, công tác cao c?p, xe c??i sang tr?ng.</p>
<p>?? <strong>Thuê Honda Accord 2024  ??ng c?p sedan h?ng D!</strong> ?</p>', 
CAST(1100000.00 AS Decimal(10, 2)), CAST(950000.00 AS Decimal(10, 2)), 
N'https://www.tonyhondahilo.com/blogs/4420/wp-content/uploads/2024/05/Capture2.jpg', 
N'active', 0, N'0', 
CAST(N'2025-02-25T10:30:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:26:38.6800000' AS DateTime2))
GO

-- car 30: Toyota Camry
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (30, N'Toyota Camry 2024', 58, N'<p><strong>Toyota Camry 2024  Sedan H?ng D, ??ng C?p, B?n B?</strong></p>
<p>?? <strong>Toyota Camry 2024</strong> là m?u sedan h?ng D bi?u t??ng v?i thi?t k? sang tr?ng, ??ng c? Hybrid ti?t ki?m và ?? b?n b? v??t th?i gian.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? Hybrid</strong>: 2.5L k?t h?p ??ng c? ?i?n, ti?t ki?m nhiên li?u t?i ?u.<br>
? <strong>Thi?t k? sang tr?ng</strong>: Ngo?i th?t ??ng c?p, ?èn LED 3 chùm, mâm 18 inch.<br>
? <strong>N?i th?t xa hoa</strong>: Gh? da cao c?p, màn hình 9 inch, HUD, c?a s? tr?i.<br>
? <strong>Toyota Safety Sense</strong>: H? th?ng an toàn ch? ??ng toàn di?n.<br>
? <strong>Không gian r?ng rãi</strong>: 5 ch? tho?i mái, c?p 524 lít.<br>
? <strong>Phù h?p cho</strong>: Doanh nhân, công ty, ??a ?ón khách VIP, xe c??i cao c?p.</p>
<p>?? <strong>Thuê Toyota Camry 2024  Bi?u t??ng sedan Nh?t B?n!</strong> ??</p>', 
CAST(1200000.00 AS Decimal(10, 2)), CAST(1050000.00 AS Decimal(10, 2)), 
N'https://i-vnexpress.vnecdn.net/2023/06/05/1-JPG-4069-1671024428-6515-1685951882.jpg', 
N'active', 0, N'0', 
CAST(N'2025-02-25T10:35:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:26:17.9700000' AS DateTime2))
GO

-- car 31: Mazda 6
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (31, N'Mazda 6 2024', 59, N'<p><strong>Mazda 6 2024  Sedan H?ng D, Th? Thao, Sang Tr?ng</strong></p>
<p>?? <strong>Mazda 6 2024</strong> là m?u sedan h?ng D v?i thi?t k? KODO ??ng c?p, ??ng c? SkyActiv m?nh m? và tr?i nghi?m lái xe th? thao.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? SkyActiv</strong>: 2.0L ho?c 2.5L Turbo, công su?t 188-250 mã l?c.<br>
? <strong>Thi?t k? th? thao</strong>: Ngo?i th?t sang tr?ng, ?èn LED Matrix, mâm 19 inch.<br>
? <strong>N?i th?t cao c?p</strong>: Gh? da Nappa, màn hình 10.25 inch, âm thanh Bose 11 loa.<br>
? <strong>Công ngh? i-Activsense</strong>: H? tr? phanh thông minh, c?nh báo ?i?m mù, cruise control.<br>
? <strong>V?n hành th? thao</strong>: G-Vectoring Control Plus, lái chính xác.<br>
? <strong>Phù h?p cho</strong>: Doanh nhân tr?, khách yêu thích v?n hành, s? ki?n cao c?p.</p>
<p>?? <strong>Thuê Mazda 6 2024  Ngh? thu?t v?n hành Nh?t B?n!</strong> ??</p>', 
CAST(1000000.00 AS Decimal(10, 2)), CAST(880000.00 AS Decimal(10, 2)), 
N'https://images2.thanhnien.vn/528068263637045248/2024/8/13/mazda6-2-17235225055131572948703.jpg', 
N'active', 0, N'0', 
CAST(N'2025-02-25T10:40:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:25:56.6233333' AS DateTime2))
GO

--car 32: VinFast Lux A2.0
INSERT [dbo].[cars] ([id], [title], [category_id], [description], [original_price], [sale_price], [thumbnail], [status], [is_combo], [combo_group_id], [created_at], [updated_at]) 
VALUES (32, N'VinFast Lux A2.0 2024', 17, N'<p><strong>VinFast Lux A2.0 2024  Sedan H?ng D Vi?t Nam, Sang Tr?ng, Công Ngh?</strong></p>
<p>?? <strong>VinFast Lux A2.0 2024</strong> là m?u sedan h?ng D ??u tiên c?a Vi?t Nam v?i thi?t k? sang tr?ng, công ngh? hi?n ??i và giá thuê c?nh tranh.</p>
<p>? <strong>??c ?i?m n?i b?t:</strong><br>
? <strong>??ng c? m?nh m?</strong>: 2.0L Turbo, 174 mã l?c, h?p s? 8 c?p.<br>
? <strong>Thi?t k? Ý</strong>: Ngo?i th?t sang tr?ng do Pininfarina thi?t k?, ?èn LED toàn ph?n.<br>
? <strong>N?i th?t cao c?p</strong>: Gh? da Nappa, màn hình 10.4 inch, c?a s? tr?i.<br>
? <strong>Công ngh? ADAS</strong>: H? tr? lái c?p ?? 2, 8 túi khí.<br>
? <strong>Không gian r?ng rãi</strong>: 5 ch? tho?i mái, c?p 500 lít.<br>
? <strong>Phù h?p cho</strong>: Doanh nghi?p Vi?t Nam, công tác, xe c??i, ??a ?ón sân bay.</p>
<p>?? <strong>Thuê VinFast Lux A2.0  T? hào xe Vi?t Nam!</strong> ?????</p>', 
CAST(900000.00 AS Decimal(10, 2)), CAST(780000.00 AS Decimal(10, 2)), 
N'https://oto360.net/images/xe/VinfastLuxA2.0/A2.0-1.webp', 
N'active', 0, N'0', 
CAST(N'2025-02-25T10:45:00.0000000' AS DateTime2), CAST(N'2025-03-29T18:25:29.0233333' AS DateTime2))
GO

SET IDENTITY_INSERT [dbo].[cars] OFF
GO

SET IDENTITY_INSERT [dbo].[car_sizes] ON 
GO

-- car 1: Toyota Vios (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (1, 1, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (2, 1, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (3, 1, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (4, 1, N'Thuê theo ngày')
GO

-- car 2: Honda City (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (5, 2, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (6, 2, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (7, 2, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (8, 2, N'Thuê theo tháng')
GO

-- car 3: Mazda CX-5 (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (9, 3, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (10, 3, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (11, 3, N'Thuê theo ngày')
GO

-- car 4: Toyota Fortuner (7 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (12, 4, N'7 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (13, 4, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (14, 4, N'Thuê theo ngày')
GO

-- car 5: Ford Everest (7 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (15, 5, N'7 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (16, 5, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (17, 5, N'Có tài xế')
GO

-- car 6: Toyota Innova Cross (7 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (18, 6, N'7 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (19, 6, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (20, 6, N'Có tài xế')
GO

-- car 7: Ford Transit (16 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (21, 7, N'16 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (22, 7, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (23, 7, N'Thuê theo ngày')
GO

-- car 8: Mercedes C200 (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (24, 8, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (25, 8, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (26, 8, N'Xe cưới')
GO

-- car 9: BMW 530i (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (28, 9, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (29, 9, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (30, 9, N'Xe cưới')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (31, 9, N'Sự kiện VIP')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (32, 9, N'Thuê theo ngày')
GO

-- car 10: Hyundai Accent (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (33, 10, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (34, 10, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (35, 10, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (36, 10, N'Thuê theo ngày')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (37, 10, N'Thuê theo tháng')
GO

-- car 11: Mazda 3 (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (38, 11, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (39, 11, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (40, 11, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (41, 11, N'Thuê theo tháng')
GO

-- car 12: Kia Cerato (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (42, 12, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (43, 12, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (44, 12, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (45, 12, N'Thuê theo ngày')
GO

-- car 13: Honda CR-V (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (46, 13, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (47, 13, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (48, 13, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (49, 13, N'Thuê theo ngày')
GO

-- car 14: Hyundai Tucson (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (50, 14, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (51, 14, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (52, 14, N'Có tài xế')
GO

-- car 15: Kia Seltos (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (53, 15, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (54, 15, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (55, 15, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (56, 15, N'Thuê theo ngày')
GO

-- car 16: Toyota Corolla Cross (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (57, 16, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (58, 16, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (59, 16, N'Có tài xế')
GO

-- car 17: Mitsubishi Xpander (7 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (60, 17, N'7 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (61, 17, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (62, 17, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (63, 17, N'Thuê theo tháng')
GO

-- car 18: Hyundai SantaFe (7 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (64, 18, N'7 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (65, 18, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (66, 18, N'Thuê theo ngày')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (67, 18, N'Du lịch gia đình')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (68, 18, N'Xe VIP')
GO

-- car 19: Mazda CX-8 (7 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (69, 19, N'7 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (70, 19, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (71, 19, N'Xe cưới')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (72, 19, N'Sự kiện cao cấp')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (73, 19, N'Thuê theo ngày')
GO

-- car 20: Ford Ranger (Bán t?i 5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (74, 20, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (75, 20, N'Bán tải')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (76, 20, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (77, 20, N'Có tài xế')
GO

-- car 21: Toyota Hilux (Bán t?i 5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (78, 21, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (79, 21, N'Bán tải')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (80, 21, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (81, 21, N'Có tài xế')
GO

-- car 22: Hyundai Solati (16 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (82, 22, N'16 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (83, 22, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (84, 22, N'Tour du lịch')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (85, 22, N'Thuê theo ngày')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (86, 22, N'Limousine')
GO

-- car 23: Mercedes GLC (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (87, 23, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (88, 23, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (89, 23, N'Xe cưới')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (90, 23, N'Sự kiện VIP')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (91, 23, N'Thuê theo giờ')
GO

-- car 24: BMW X3 (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (92, 24, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (93, 24, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (94, 24, N'Xe cưới')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (95, 24, N'Sự kiện VIP')
GO

-- car 25: Lexus RX (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (96, 25, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (97, 25, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (98, 25, N'Xe cưới cao cấp')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (99, 25, N'Khách VIP')
GO

-- car 26: VinFast VF8 (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (100, 26, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (101, 26, N'Xe điện')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (102, 26, N'Tự lái')
GO

-- car 27: Kia Carnival (7 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (103, 27, N'7 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (104, 27, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (105, 27, N'Limousine')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (106, 27, N'Xe VIP')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (107, 27, N'Du lịch gia đình')
GO

-- car 28: Suzuki Ertiga (7 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (108, 28, N'7 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (109, 28, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (110, 28, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (111, 28, N'Thuê theo tháng')
GO

-- car 29: Honda Accord (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (112, 29, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (113, 29, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (114, 29, N'Xe cưới')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (115, 29, N'Thuê theo ngày')
GO

-- car 30: Toyota Camry (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (116, 30, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (117, 30, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (118, 30, N'Xe cưới')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (119, 30, N'Đưa đón sân bay')
GO

-- car 31: Mazda 6 (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (120, 31, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (121, 31, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (122, 31, N'Có tài xế')
GO

-- car 32: VinFast Lux A2.0 (5 ch?)
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (123, 32, N'5 chỗ')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (124, 32, N'Tự lái')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (125, 32, N'Có tài xế')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (126, 32, N'Xe cưới')
GO
INSERT [dbo].[car_sizes] ([id], [car_id], [size]) VALUES (127, 32, N'Thuê theo ngày')
GO

SET IDENTITY_INSERT [dbo].[car_sizes] OFF
GO


SET IDENTITY_INSERT [dbo].[car_colors] ON 
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (1, 1, N'Trắng')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (2, 1, N'Xanh nhạt')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (3, 2, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (4, 2, N'Xám')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (5, 3, N'Hoa xanh')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (6, 3, N'Xanh ngọc')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (7, 4, N'Xanh đậm')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (8, 4, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (9, 5, N'Đỏ')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (10, 5, N'Xanh')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (11, 6, N'Xanh navy')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (12, 6, N'Xám')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (13, 7, N'Nâu')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (14, 7, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (17, 9, N'Trắng')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (18, 9, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (19, 10, N'Trắng')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (20, 10, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (21, 10, N'Xanh')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (22, 11, N'Xanh')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (23, 11, N'Đỏ')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (24, 12, N'Xanh')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (25, 12, N'Xanh đậm')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (26, 13, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (27, 13, N'Navy')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (29, 14, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (30, 14, N'Xám')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (31, 14, N'Xanh Đậm')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (32, 15, N'Trắng be')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (33, 15, N'Trắng')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (34, 16, N'Trắng')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (35, 16, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (36, 16, N'Xám')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (37, 17, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (38, 17, N'Đỏ')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (39, 18, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (40, 18, N'Xám')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (41, 18, N'Xanh navy')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (42, 19, N'Bạc')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (43, 19, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (44, 20, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (45, 20, N'Kem')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (46, 20, N'Trắng')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (47, 21, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (48, 21, N'Nâu')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (49, 21, N'Vàng gold')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (50, 22, N'Trắng')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (51, 22, N'Trắng')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (52, 22, N'Xanh')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (53, 23, N'Xanh')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (54, 23, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (55, 23, N'Xanh nhạt')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (56, 24, N'Kem')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (57, 24, N'Xám')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (58, 24, N'Nâu')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (59, 25, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (60, 25, N'Nâu')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (61, 25, N'Kem')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (62, 26, N'Bạc')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (63, 26, N'Vàng')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (64, 27, N'Kem')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (65, 27, N'Xanh')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (66, 27, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (67, 28, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (68, 28, N'Nâu')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (69, 29, N'Trắng')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (70, 29, N'Xanh')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (71, 29, N'Vàng')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (72, 30, N'Bạc')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (73, 30, N'Vàng')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (74, 31, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (75, 31, N'Xám')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (76, 31, N'Đỏ')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (77, 32, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (78, 32, N'Xanh')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (79, 32, N'Đen')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (80, 32, N'Xám')
GO
INSERT [dbo].[car_colors] ([id], [car_id], [color]) VALUES (81, 32, N'Đỏ')
GO
SET IDENTITY_INSERT [dbo].[car_colors] OFF
GO
SET IDENTITY_INSERT [dbo].[car_variants] ON 
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (1, 1, 1, 1, 30, CAST(N'2025-03-01T05:32:49.6166667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (2, 1, 2, 1, 30, CAST(N'2025-03-01T05:32:46.1733333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (3, 1, 3, 1, 30, CAST(N'2025-03-01T05:32:44.3233333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (4, 1, 4, 1, 30, CAST(N'2025-03-01T05:32:47.8333333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (5, 1, 1, 2, 30, CAST(N'2025-03-01T05:32:56.7500000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (6, 1, 2, 2, 30, CAST(N'2025-03-01T05:32:53.2233333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (7, 1, 3, 2, 30, CAST(N'2025-03-01T05:32:51.3033333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (8, 1, 4, 2, 30, CAST(N'2025-03-01T05:32:54.7833333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (9, 2, 5, 3, 30, CAST(N'2025-03-01T05:33:56.5733333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (10, 2, 6, 3, 30, CAST(N'2025-03-01T05:33:54.9400000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (11, 2, 7, 3, 30, CAST(N'2025-03-01T05:33:52.9966667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (12, 2, 8, 3, 30, CAST(N'2025-03-01T05:33:58.3033333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (13, 2, 5, 4, 30, CAST(N'2025-03-01T05:34:03.8566667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (14, 2, 6, 4, 30, CAST(N'2025-03-01T05:34:02.0033333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (15, 2, 7, 4, 30, CAST(N'2025-03-01T05:34:00.2000000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (16, 2, 8, 4, 30, CAST(N'2025-03-01T05:34:15.2900000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (17, 3, 9, 5, 30, CAST(N'2025-03-01T05:37:04.1966667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (18, 3, 10, 5, 30, CAST(N'2025-03-01T05:37:02.6533333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (19, 3, 11, 5, 30, CAST(N'2025-03-01T05:37:01.1000000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (20, 3, 9, 6, 30, CAST(N'2025-03-01T05:36:59.4766667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (21, 3, 10, 6, 30, CAST(N'2025-03-01T05:36:56.9100000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (22, 3, 11, 6, 30, CAST(N'2025-03-01T05:36:55.2233333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (23, 4, 12, 7, 30, CAST(N'2025-03-01T05:33:28.4200000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (24, 4, 13, 7, 30, CAST(N'2025-03-01T05:33:26.4733333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (25, 4, 14, 7, 30, CAST(N'2025-03-01T05:33:24.7666667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (26, 4, 12, 8, 30, CAST(N'2025-03-01T05:33:23.1033333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (27, 4, 13, 8, 30, CAST(N'2025-03-01T05:33:21.2866667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (28, 4, 14, 8, 30, CAST(N'2025-03-01T05:33:19.7200000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (29, 5, 15, 9, 30, CAST(N'2025-03-01T05:33:02.6033333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (30, 5, 16, 9, 30, CAST(N'2025-03-01T05:33:04.3900000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (31, 5, 17, 9, 30, CAST(N'2025-03-01T05:33:08.3566667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (32, 5, 15, 10, 30, CAST(N'2025-03-01T05:33:06.7300000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (33, 5, 16, 10, 30, CAST(N'2025-03-01T05:33:09.9700000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (34, 5, 17, 10, 30, CAST(N'2025-03-01T05:33:12.7200000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (35, 6, 18, 11, 30, CAST(N'2025-03-01T05:34:24.9300000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (36, 6, 19, 11, 30, CAST(N'2025-03-01T05:34:23.2400000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (37, 6, 20, 11, 30, CAST(N'2025-03-01T05:34:21.4366667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (38, 6, 18, 12, 30, CAST(N'2025-03-01T05:34:30.2333333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (39, 6, 19, 12, 30, CAST(N'2025-03-01T05:34:28.4800000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (40, 6, 20, 12, 30, CAST(N'2025-03-01T05:34:26.6366667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (41, 7, 24, 13, 30, CAST(N'2025-03-01T05:34:46.2300000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (42, 7, 25, 13, 30, CAST(N'2025-03-01T05:34:44.6233333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (43, 7, 26, 13, 30, CAST(N'2025-03-01T05:34:43.1500000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (44, 7, 24, 14, 30, CAST(N'2025-03-01T05:34:41.5633333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (45, 7, 25, 14, 30, CAST(N'2025-03-01T05:34:38.2533333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (46, 7, 26, 14, 30, CAST(N'2025-03-01T05:34:40.0266667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (49, 9, 28, 17, 30, CAST(N'2025-03-01T05:35:49.7300000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (50, 9, 29, 17, 30, CAST(N'2025-03-01T05:35:45.2166667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (51, 9, 30, 17, 30, CAST(N'2025-03-01T05:35:52.1066667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (52, 9, 31, 17, 30, CAST(N'2025-03-01T05:35:57.1700000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (53, 9, 32, 17, 30, CAST(N'2025-03-01T05:35:54.7366667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (54, 9, 28, 18, 30, CAST(N'2025-03-01T05:35:36.2066667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (55, 9, 29, 18, 30, CAST(N'2025-03-01T05:35:39.6033333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (56, 9, 30, 18, 30, CAST(N'2025-03-01T05:35:37.9700000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (57, 9, 31, 18, 30, CAST(N'2025-03-01T05:35:41.3400000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (58, 9, 32, 18, 30, CAST(N'2025-03-01T05:35:47.2166667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (59, 10, 33, 19, 30, CAST(N'2025-03-01T05:34:59.9733333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (60, 10, 34, 19, 30, CAST(N'2025-03-01T05:35:03.4600000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (61, 10, 35, 19, 30, CAST(N'2025-03-01T05:35:05.2566667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (62, 10, 36, 19, 30, CAST(N'2025-03-01T05:35:06.9266667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (63, 10, 37, 19, 30, CAST(N'2025-03-01T05:35:09.0933333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (64, 10, 33, 20, 30, CAST(N'2025-03-01T05:34:53.1966667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (65, 10, 34, 20, 30, CAST(N'2025-03-01T05:34:55.0733333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (66, 10, 35, 20, 30, CAST(N'2025-03-01T05:34:56.6600000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (67, 10, 36, 20, 30, CAST(N'2025-03-01T05:34:58.1466667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (68, 10, 37, 20, 30, CAST(N'2025-03-01T05:35:01.5366667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (69, 10, 33, 21, 30, CAST(N'2025-03-01T05:35:11.7233333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (70, 10, 34, 21, 30, CAST(N'2025-03-01T05:35:17.1533333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (71, 10, 35, 21, 30, CAST(N'2025-03-01T05:35:20.3666667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (72, 10, 36, 21, 30, CAST(N'2025-03-01T05:35:23.5666667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (73, 10, 37, 21, 30, CAST(N'2025-03-01T05:35:14.4900000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (74, 11, 21, 22, 30, CAST(N'2025-03-29T17:11:08.7000000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (75, 11, 22, 22, 30, CAST(N'2025-03-01T05:37:42.5333333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (76, 11, 23, 22, 30, CAST(N'2025-03-01T05:37:44.3800000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (77, 11, 21, 23, 30, CAST(N'2025-03-01T05:37:36.0500000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (78, 11, 22, 23, 30, CAST(N'2025-03-01T05:37:37.9966667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (79, 11, 23, 23, 30, CAST(N'2025-03-01T05:37:39.5366667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (80, 12, 38, 24, 30, CAST(N'2025-03-01T05:32:29.2166667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (81, 12, 39, 24, 30, CAST(N'2025-03-01T05:32:26.0466667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (82, 12, 40, 24, 30, CAST(N'2025-03-01T05:32:24.5433333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (83, 12, 41, 24, 30, CAST(N'2025-03-01T05:32:32.7566667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (84, 12, 38, 25, 30, CAST(N'2025-03-01T05:32:38.0100000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (85, 12, 39, 25, 30, CAST(N'2025-03-01T05:32:30.8466667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (86, 12, 40, 25, 30, CAST(N'2025-03-01T05:32:34.5133333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (87, 12, 41, 25, 30, CAST(N'2025-03-01T05:32:36.2933333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (88, 13, 42, 26, 30, CAST(N'2025-03-01T05:30:59.8700000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (89, 13, 43, 26, 30, CAST(N'2025-03-01T05:30:55.6000000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (90, 13, 44, 26, 30, CAST(N'2025-03-01T05:30:53.9466667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (91, 13, 45, 26, 30, CAST(N'2025-03-01T05:30:57.5000000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (92, 13, 42, 27, 30, CAST(N'2025-03-01T05:31:05.5466667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (93, 13, 43, 27, 30, CAST(N'2025-03-01T05:31:03.5166667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (94, 13, 44, 27, 30, CAST(N'2025-03-01T05:31:01.7566667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (95, 13, 45, 27, 30, CAST(N'2025-03-01T05:31:08.3633333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (100, 14, 46, 29, 30, CAST(N'2025-03-01T05:31:37.6933333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (101, 14, 47, 29, 30, CAST(N'2025-03-01T05:31:34.0066667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (102, 14, 48, 29, 30, CAST(N'2025-03-01T05:31:31.0666667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (103, 14, 49, 29, 30, CAST(N'2025-03-01T05:31:35.6833333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (104, 14, 46, 30, 30, CAST(N'2025-03-01T05:31:44.9633333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (105, 14, 47, 30, 30, CAST(N'2025-03-01T05:31:42.9900000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (106, 14, 48, 30, 30, CAST(N'2025-03-01T05:31:40.2200000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (107, 14, 49, 30, 30, CAST(N'2025-03-01T05:31:46.7166667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (108, 14, 46, 31, 30, CAST(N'2025-03-01T05:31:55.0566667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (109, 14, 47, 31, 30, CAST(N'2025-03-01T05:31:51.9633333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (110, 14, 48, 31, 30, CAST(N'2025-03-01T05:31:49.3600000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (111, 14, 49, 31, 30, CAST(N'2025-03-01T05:31:57.5966667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (112, 15, 50, 32, 30, CAST(N'2025-03-01T05:32:14.0900000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (113, 15, 51, 32, 30, CAST(N'2025-03-01T05:32:10.7633333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (114, 15, 52, 32, 30, CAST(N'2025-03-01T05:32:12.4100000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (115, 15, 50, 33, 30, CAST(N'2025-03-29T17:06:01.0000000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (116, 15, 51, 33, 30, CAST(N'2025-03-01T05:32:06.5033333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (117, 15, 52, 33, 30, CAST(N'2025-03-01T05:32:04.3800000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (118, 16, 53, 34, 30, CAST(N'2025-03-01T05:30:33.9566667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (119, 16, 54, 34, 30, CAST(N'2025-03-01T05:30:24.7866667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (120, 16, 55, 34, 30, CAST(N'2025-03-01T05:30:31.8500000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (121, 16, 56, 34, 30, CAST(N'2025-03-01T05:30:36.4300000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (122, 16, 53, 35, 30, CAST(N'2025-03-01T05:30:27.0500000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (123, 16, 54, 35, 30, CAST(N'2025-03-01T05:30:22.6733333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (124, 16, 55, 35, 30, CAST(N'2025-03-01T05:30:17.3166667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (125, 16, 56, 35, 30, CAST(N'2025-03-01T05:30:29.3466667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (126, 16, 53, 36, 30, CAST(N'2025-03-01T05:30:44.3900000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (127, 16, 54, 36, 30, CAST(N'2025-03-01T05:30:41.5300000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (128, 16, 55, 36, 30, CAST(N'2025-03-01T05:30:39.4133333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (129, 16, 56, 36, 30, CAST(N'2025-03-01T05:30:47.0933333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (130, 17, 57, 37, 30, CAST(N'2025-03-01T05:29:52.5600000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (131, 17, 58, 37, 30, CAST(N'2025-03-01T05:29:54.0866667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (132, 17, 59, 37, 30, CAST(N'2025-03-01T05:29:55.4700000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (133, 17, 57, 38, 30, CAST(N'2025-03-01T05:29:57.4000000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (134, 17, 58, 38, 30, CAST(N'2025-03-01T05:29:59.3200000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (135, 17, 59, 38, 30, CAST(N'2025-03-01T05:30:01.0166667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (136, 18, 60, 39, 30, CAST(N'2025-03-01T05:29:39.2666667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (137, 18, 60, 40, 30, CAST(N'2025-03-01T05:29:40.9066667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (138, 18, 60, 41, 30, CAST(N'2025-03-01T05:29:42.5666667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (139, 19, 61, 42, 30, CAST(N'2025-03-01T05:29:22.3866667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (140, 19, 62, 42, 30, CAST(N'2025-03-01T05:29:24.2033333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (141, 19, 63, 42, 30, CAST(N'2025-03-01T05:29:29.9100000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (142, 19, 61, 43, 30, CAST(N'2025-03-01T05:29:25.8733333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (143, 19, 62, 43, 30, CAST(N'2025-03-01T05:29:27.5466667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (144, 19, 63, 43, 30, CAST(N'2025-03-01T05:29:31.7000000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (145, 20, 64, 44, 30, CAST(N'2025-03-01T05:28:35.0333333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (146, 20, 65, 44, 30, CAST(N'2025-03-01T05:28:37.2400000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (147, 20, 66, 44, 30, CAST(N'2025-03-01T05:28:42.5166667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (148, 20, 67, 44, 30, CAST(N'2025-03-01T05:28:44.7433333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (149, 20, 68, 44, 30, CAST(N'2025-03-01T05:28:40.6700000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (150, 20, 64, 45, 30, CAST(N'2025-03-01T05:29:02.5600000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (151, 20, 65, 45, 30, CAST(N'2025-03-01T05:29:05.3500000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (152, 20, 66, 45, 30, CAST(N'2025-03-01T05:29:08.5833333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (153, 20, 67, 45, 30, CAST(N'2025-03-01T05:29:11.8866667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (154, 20, 68, 45, 30, CAST(N'2025-03-01T05:29:14.6566667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (155, 20, 64, 46, 30, CAST(N'2025-03-01T05:28:49.3633333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (156, 20, 65, 46, 30, CAST(N'2025-03-01T05:28:51.9500000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (157, 20, 66, 46, 30, CAST(N'2025-03-01T05:28:54.7533333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (158, 20, 67, 46, 30, CAST(N'2025-03-01T05:28:57.6900000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (159, 20, 68, 46, 30, CAST(N'2025-03-01T05:29:00.1233333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (160, 21, 69, 47, 30, CAST(N'2025-03-01T05:28:23.5800000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (161, 21, 69, 48, 30, CAST(N'2025-03-01T05:28:25.1700000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (162, 21, 69, 49, 30, CAST(N'2025-03-01T05:28:26.6266667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (163, 22, 70, 50, 30, CAST(N'2025-03-01T05:28:03.0966667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (164, 22, 71, 50, 30, CAST(N'2025-03-01T05:27:55.7566667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (165, 22, 72, 50, 30, CAST(N'2025-03-01T05:27:53.1566667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (166, 22, 73, 50, 30, CAST(N'2025-03-01T05:28:05.5400000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (167, 22, 70, 51, 30, CAST(N'2025-03-01T05:27:49.6533333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (168, 22, 71, 51, 30, CAST(N'2025-03-01T05:27:47.7933333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (169, 22, 72, 51, 30, CAST(N'2025-03-01T05:27:45.6300000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (170, 22, 73, 51, 30, CAST(N'2025-03-01T05:27:51.3533333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (171, 22, 70, 52, 30, CAST(N'2025-03-01T05:28:13.2666667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (172, 22, 71, 52, 30, CAST(N'2025-03-01T05:28:10.6200000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (173, 22, 72, 52, 30, CAST(N'2025-03-01T05:28:08.2266667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (174, 22, 73, 52, 30, CAST(N'2025-03-01T05:28:16.0233333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (175, 23, 74, 53, 30, CAST(N'2025-03-01T05:27:17.6100000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (176, 23, 75, 53, 30, CAST(N'2025-03-01T05:27:14.9200000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (177, 23, 76, 53, 30, CAST(N'2025-03-01T05:27:09.6000000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (178, 23, 77, 53, 30, CAST(N'2025-03-01T05:27:25.1033333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (179, 23, 74, 54, 30, CAST(N'2025-03-01T05:27:03.9733333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (180, 23, 75, 54, 30, CAST(N'2025-03-01T05:26:58.5833333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (181, 23, 76, 54, 30, CAST(N'2025-03-01T05:26:57.0500000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (182, 23, 77, 54, 30, CAST(N'2025-03-01T05:27:02.2800000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (183, 23, 74, 55, 30, CAST(N'2025-03-01T05:27:32.9466667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (184, 23, 75, 55, 30, CAST(N'2025-03-01T05:27:30.5733333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (185, 23, 76, 55, 30, CAST(N'2025-03-01T05:27:28.0966667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (186, 23, 77, 55, 30, CAST(N'2025-03-01T05:27:35.6400000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (187, 24, 78, 56, 30, CAST(N'2025-03-01T05:26:03.7366667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (188, 24, 79, 56, 30, CAST(N'2025-03-01T05:26:02.1633333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (189, 24, 80, 56, 30, CAST(N'2025-03-01T05:26:00.2733333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (190, 24, 81, 56, 30, CAST(N'2025-03-01T05:26:05.3500000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (191, 24, 78, 57, 30, CAST(N'2025-03-01T05:26:48.7033333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (192, 24, 79, 57, 30, CAST(N'2025-03-01T05:26:45.1800000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (193, 24, 80, 57, 30, CAST(N'2025-03-01T05:26:24.5800000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (194, 24, 81, 57, 30, CAST(N'2025-03-01T05:26:51.6466667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (195, 24, 78, 58, 30, CAST(N'2025-03-01T05:26:14.5733333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (196, 24, 79, 58, 30, CAST(N'2025-03-01T05:26:11.5666667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (197, 24, 80, 58, 30, CAST(N'2025-03-01T05:26:07.5566667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (198, 24, 81, 58, 30, CAST(N'2025-03-01T05:26:17.1166667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (199, 25, 82, 59, 30, CAST(N'2025-03-29T17:06:52.3766667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (200, 25, 82, 60, 30, CAST(N'2025-03-01T05:25:51.0066667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (201, 25, 82, 61, 30, CAST(N'2025-03-01T05:25:52.7800000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (202, 26, 83, 62, 30, CAST(N'2025-03-01T05:25:41.6866667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (203, 26, 83, 63, 30, CAST(N'2025-03-01T05:25:43.2966667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (204, 27, 84, 64, 30, CAST(N'2025-03-01T05:25:00.1066667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (205, 27, 85, 64, 30, CAST(N'2025-03-01T05:24:56.8533333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (206, 27, 86, 64, 30, CAST(N'2025-03-01T05:24:55.0133333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (207, 27, 84, 65, 30, CAST(N'2025-03-01T05:25:06.7300000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (208, 27, 85, 65, 30, CAST(N'2025-03-01T05:25:04.4333333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (209, 27, 86, 65, 30, CAST(N'2025-03-01T05:25:02.0933333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (210, 27, 84, 66, 30, CAST(N'2025-03-01T05:18:35.2833333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (211, 27, 85, 66, 30, CAST(N'2025-03-01T05:18:33.6066667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (212, 27, 86, 66, 30, CAST(N'2025-03-01T05:18:31.8800000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (213, 28, 87, 67, 30, CAST(N'2025-03-01T05:07:28.7233333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (214, 28, 88, 67, 30, CAST(N'2025-03-01T05:07:30.5033333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (215, 28, 89, 67, 30, CAST(N'2025-03-01T05:07:32.1733333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (216, 28, 90, 67, 30, CAST(N'2025-03-01T05:07:33.7733333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (217, 28, 91, 67, 30, CAST(N'2025-03-01T05:07:35.4500000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (218, 28, 87, 68, 30, CAST(N'2025-03-29T16:47:58.3866667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (219, 28, 88, 68, 30, CAST(N'2025-03-01T05:07:40.4733333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (220, 28, 89, 68, 30, CAST(N'2025-03-01T05:07:43.7200000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (221, 28, 90, 68, 30, CAST(N'2025-03-01T05:07:46.3200000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (222, 28, 91, 68, 30, CAST(N'2025-03-01T05:07:48.9600000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (223, 29, 92, 69, 30, CAST(N'2025-03-01T05:06:43.1100000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (224, 29, 93, 69, 30, CAST(N'2025-03-29T20:08:25.3533333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (225, 29, 94, 69, 30, CAST(N'2025-03-01T05:06:53.3000000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (226, 29, 95, 69, 30, CAST(N'2025-03-01T05:06:51.1733333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (227, 29, 92, 70, 30, CAST(N'2025-03-01T05:07:10.9900000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (228, 29, 93, 70, 30, CAST(N'2025-03-01T05:07:20.0133333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (229, 29, 94, 70, 30, CAST(N'2025-03-01T05:07:17.0166667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (230, 29, 95, 70, 30, CAST(N'2025-03-01T05:07:14.2666667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (231, 29, 92, 71, 30, CAST(N'2025-03-01T05:06:56.0033333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (232, 29, 93, 71, 30, CAST(N'2025-03-01T05:06:58.2533333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (233, 29, 94, 71, 30, CAST(N'2025-03-01T05:07:01.8100000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (234, 29, 95, 71, 30, CAST(N'2025-03-01T05:07:06.8766667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (235, 30, 96, 72, 30, CAST(N'2025-03-01T04:44:23.9066667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (236, 30, 97, 72, 30, CAST(N'2025-03-01T04:44:30.8933333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (237, 30, 98, 72, 30, CAST(N'2025-03-01T04:57:43.5466667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (238, 30, 99, 72, 30, CAST(N'2025-03-01T04:57:45.6966667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (239, 30, 96, 73, 30, CAST(N'2025-03-01T05:05:25.7800000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (240, 30, 97, 73, 30, CAST(N'2025-03-01T05:06:23.2533333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (241, 30, 98, 73, 30, CAST(N'2025-03-01T05:06:26.2366667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (242, 30, 99, 73, 30, CAST(N'2025-03-01T05:06:29.0633333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (243, 31, 100, 74, 30, CAST(N'2025-03-01T04:26:19.1566667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (244, 31, 101, 74, 30, CAST(N'2025-03-01T04:26:17.3833333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (245, 31, 102, 74, 30, CAST(N'2025-03-01T04:26:15.5300000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (246, 31, 100, 75, 30, CAST(N'2025-03-01T04:26:39.4000000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (247, 31, 101, 75, 30, CAST(N'2025-03-01T04:26:32.6266667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (248, 31, 102, 75, 30, CAST(N'2025-03-01T04:26:29.6300000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (249, 31, 100, 76, 30, CAST(N'2025-03-01T05:05:18.6300000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (250, 31, 101, 76, 30, CAST(N'2025-03-01T05:05:16.5200000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (251, 31, 102, 76, 30, CAST(N'2025-03-01T05:04:58.2700000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (252, 32, 103, 80, 30, CAST(N'2025-03-01T04:25:44.3400000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (253, 32, 104, 77, 30, CAST(N'2025-03-01T04:15:31.7700000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (254, 32, 105, 77, 30, CAST(N'2025-03-01T04:15:34.3033333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (255, 32, 106, 77, 30, CAST(N'2025-03-01T04:15:36.9300000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (256, 32, 107, 77, 30, CAST(N'2025-03-01T04:15:39.3333333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (257, 32, 103, 78, 30, CAST(N'2025-03-01T05:04:34.5466667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (258, 32, 104, 78, 30, CAST(N'2025-03-01T05:04:41.9300000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (259, 32, 105, 78, 30, CAST(N'2025-03-01T05:04:45.7666667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (260, 32, 106, 78, 30, CAST(N'2025-03-01T05:04:48.6333333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (261, 32, 107, 78, 30, CAST(N'2025-03-01T05:04:51.2233333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (262, 32, 103, 79, 30, CAST(N'2025-03-01T04:24:59.3200000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (263, 32, 104, 79, 30, CAST(N'2025-03-01T04:25:22.7033333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (264, 32, 105, 79, 30, CAST(N'2025-03-01T04:25:25.0966667' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (265, 32, 106, 79, 30, CAST(N'2025-03-01T04:25:29.8200000' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (266, 32, 107, 79, 30, CAST(N'2025-03-01T04:25:33.5133333' AS DateTime2))
GO
INSERT [dbo].[car_variants] ([id], [car_id], [size_id], [color_id], [stock_quantity], [last_restock_date]) VALUES (268, 32, 107, 81, 30, CAST(N'2025-03-01T04:25:38.7000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[car_variants] OFF
GO
SET IDENTITY_INSERT [dbo].[cart_items] ON 
GO
INSERT [dbo].[cart_items] ([id], [cart_id], [car_id], [variant_id], [quantity]) VALUES (1, 1, 1, 1, 2)
GO
INSERT [dbo].[cart_items] ([id], [cart_id], [car_id], [variant_id], [quantity]) VALUES (2, 2, 2, 2, 1)
GO
INSERT [dbo].[cart_items] ([id], [cart_id], [car_id], [variant_id], [quantity]) VALUES (3, 3, 3, 3, 1)
GO
INSERT [dbo].[cart_items] ([id], [cart_id], [car_id], [variant_id], [quantity]) VALUES (6, 5, 31, 246, 1)
GO
SET IDENTITY_INSERT [dbo].[cart_items] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (1, 4, N'pending', CAST(1050000.00 AS Decimal(10, 2)), N'Nguy?n V?n A', N'user123@gmail.com', N'0866046581', N'thôn 1, Xã Ng?c H?i, Huy?n Thanh Trì, Thành ph? Hà N?i', NULL, NULL, N'ORD1743241428405538', CAST(N'2025-03-29T16:43:48.4100000' AS DateTime2), CAST(N'2025-03-29T16:43:48.4100000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (2, 4, N'shipping', CAST(711000.00 AS Decimal(10, 2)), N'Nguy?n V?n A', N'user123@gmail.com', N'0866046581', N'thôn 1, Xã Ng?c H?i, Huy?n Thanh Trì, Thành ph? Hà N?i', NULL, NULL, N'ORD1743241470259289', CAST(N'2025-03-29T16:44:30.2566667' AS DateTime2), CAST(N'2025-03-29T16:44:48.7100000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (3, 4, N'processing', CAST(530000.00 AS Decimal(10, 2)), N'Nguy?n V?n A', N'user123@gmail.com', N'0866046581', N'thôn 1, Xã Ng?c H?i, Huy?n Thanh Trì, Thành ph? Hà N?i', NULL, NULL, N'ORD1743241514599980', CAST(N'2025-03-29T16:45:14.6000000' AS DateTime2), CAST(N'2025-03-29T16:45:23.3066667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (4, 4, N'completed', CAST(1300000.00 AS Decimal(10, 2)), N'Nguy?n V?n A', N'user123@gmail.com', N'0866046581', N'thôn 1, Xã Ng?c H?i, Huy?n Thanh Trì, Thành ph? Hà N?i', NULL, NULL, N'ORD1743241570395435', CAST(N'2025-03-29T16:46:10.3933333' AS DateTime2), CAST(N'2025-03-29T16:46:57.8066667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (5, 4, N'returned', CAST(225000.00 AS Decimal(10, 2)), N'Nguy?n V?n A', N'user123@gmail.com', N'0866046581', N'thôn 1, Xã Ng?c H?i, Huy?n Thanh Trì, Thành ph? Hà N?i', NULL, NULL, N'ORD1743241646245155', CAST(N'2025-03-29T16:47:26.2466667' AS DateTime2), CAST(N'2025-03-29T16:47:58.3800000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (6, 4, N'completed', CAST(252000.00 AS Decimal(10, 2)), N'Nguy?n V?n A', N'user123@gmail.com', N'0866046581', N'thôn 1, Xã Ng?c H?i, Huy?n Thanh Trì, Thành ph? Hà N?i', NULL, NULL, N'ORD1743241725948883', CAST(N'2025-03-29T16:48:45.9466667' AS DateTime2), CAST(N'2025-03-29T16:49:21.6766667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (7, 4, N'completed', CAST(510000.00 AS Decimal(10, 2)), N'Nguy?n Thi B', N'user123@gmail.com', N'0866046585', N'thôn 4, Ph??ng Duy?t Trung, Thành ph? Cao B?ng, T?nh Cao B?ng', NULL, NULL, N'ORD1743241840947177', CAST(N'2025-03-29T16:50:40.9466667' AS DateTime2), CAST(N'2025-03-29T16:51:17.9600000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (8, 4, N'completed', CAST(830000.00 AS Decimal(10, 2)), N'Nguy?n V?n C', N'user123@gmail.com', N'0961004959', N'thôn 5, Xã Mông Ân, Huy?n B?o Lâm, T?nh Cao B?ng', NULL, NULL, N'ORD1743241990370593', CAST(N'2025-03-29T16:53:10.3700000' AS DateTime2), CAST(N'2025-03-29T16:53:57.3333333' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (9, 6, N'completed', CAST(1430000.00 AS Decimal(10, 2)), N'Nguyen Hanh Nhan', N'user321@gmail.com', N'0866046598', N'thôn 6, Xã Mông Ân, Huy?n B?o Lâm, T?nh Cao B?ng', NULL, NULL, N'ORD1743242141730751', CAST(N'2025-03-29T16:55:41.7300000' AS DateTime2), CAST(N'2025-03-29T16:56:07.8400000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (10, 6, N'completed', CAST(580000.00 AS Decimal(10, 2)), N'Nguyen Hanh Nhan', N'user321@gmail.com', N'0866046598', N'thôn 6, Xã Mông Ân, Huy?n B?o Lâm, T?nh Cao B?ng', NULL, NULL, N'ORD1743242411259913', CAST(N'2025-03-29T17:00:11.2600000' AS DateTime2), CAST(N'2025-03-29T17:01:10.2233333' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (11, 6, N'pending', CAST(180000.00 AS Decimal(10, 2)), N'Nguyen Hanh Nhan', N'user321@gmail.com', N'0866046598', N'thôn 6, Xã Mông Ân, Huy?n B?o Lâm, T?nh Cao B?ng', NULL, NULL, N'ORD1743242501646465', CAST(N'2025-03-29T17:01:41.6466667' AS DateTime2), CAST(N'2025-03-29T17:01:41.6466667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (12, 6, N'processing', CAST(260000.00 AS Decimal(10, 2)), N'Nguyen Hanh Nhan', N'user321@gmail.com', N'0866046598', N'thôn 6, Xã Mông Ân, Huy?n B?o Lâm, T?nh Cao B?ng', NULL, NULL, N'ORD1743242522880742', CAST(N'2025-03-29T17:02:02.8800000' AS DateTime2), CAST(N'2025-03-29T17:02:13.7933333' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (13, 8, N'completed', CAST(1380000.00 AS Decimal(10, 2)), N'Nguyen Van Anh', N'Medusa@gmail.com', N'0866046585', N'thôn 4, Ph??ng Tr?n Phú, Thành ph? Hà Giang, T?nh Hà Giang', NULL, NULL, N'ORD1743242625696490', CAST(N'2025-03-29T17:03:45.6933333' AS DateTime2), CAST(N'2025-03-29T17:04:09.4933333' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (14, 8, N'shipping', CAST(180000.00 AS Decimal(10, 2)), N'Nguyen Van Anh', N'Medusa@gmail.com', N'0866046585', N'thôn 4, Ph??ng Tr?n Phú, Thành ph? Hà Giang, T?nh Hà Giang', NULL, NULL, N'ORD1743242680246480', CAST(N'2025-03-29T17:04:40.2466667' AS DateTime2), CAST(N'2025-03-29T17:04:59.4266667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (15, 8, N'cancelled', CAST(445000.00 AS Decimal(10, 2)), N'Nguyen Van Anh', N'Medusa@gmail.com', N'0866046585', N'thôn 4, Ph??ng Tr?n Phú, Thành ph? Hà Giang, T?nh Hà Giang', NULL, NULL, N'ORD1743242748011878', CAST(N'2025-03-29T17:05:48.0100000' AS DateTime2), CAST(N'2025-03-29T17:06:00.9800000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (16, 8, N'returned', CAST(295000.00 AS Decimal(10, 2)), N'Nguyen Van Anh', N'Medusa@gmail.com', N'0866046585', N'thôn 4, Ph??ng Tr?n Phú, Thành ph? Hà Giang, T?nh Hà Giang', NULL, NULL, N'ORD1743242790299989', CAST(N'2025-03-29T17:06:30.3000000' AS DateTime2), CAST(N'2025-03-29T17:06:52.3733333' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (17, 12, N'completed', CAST(900000.00 AS Decimal(10, 2)), N'Nguyen Hong Hanh', N'GuYuan@gmail.com', N'0961004935', N'thôn 5, Xã Qu?ng Khê, Huy?n Ba B?, T?nh B?c K?n', NULL, NULL, N'ORD1743242886766576', CAST(N'2025-03-29T17:08:06.7633333' AS DateTime2), CAST(N'2025-03-29T17:08:40.9600000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (18, 12, N'completed', CAST(3230000.00 AS Decimal(10, 2)), N'Nguyen Hong Hanh', N'GuYuan@gmail.com', N'0961004935', N'thôn 5, Xã Qu?ng Khê, Huy?n Ba B?, T?nh B?c K?n', NULL, NULL, N'ORD1743243013931542', CAST(N'2025-03-29T17:10:13.9300000' AS DateTime2), CAST(N'2025-03-29T17:10:40.6600000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (19, 12, N'cancelled', CAST(550000.00 AS Decimal(10, 2)), N'Nguyen Hong Hanh', N'GuYuan@gmail.com', N'0961004935', N'thôn 5, Xã Qu?ng Khê, Huy?n Ba B?, T?nh B?c K?n', NULL, NULL, N'ORD1743243064277146', CAST(N'2025-03-29T17:11:04.2766667' AS DateTime2), CAST(N'2025-03-29T17:11:08.6900000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (20, 7, N'completed', CAST(578000.00 AS Decimal(10, 2)), N'Nguy?n Thi D', N'XiaoDing@gmail.com', N'0866046543', N'thôn 3, Ph??ng Ng?c Hà, Thành ph? Hà Giang, T?nh Hà Giang', NULL, NULL, N'ORD1743245078046293', CAST(N'2025-03-29T17:44:38.0466667' AS DateTime2), CAST(N'2025-03-29T17:45:39.6066667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (21, 7, N'completed', CAST(1770000.00 AS Decimal(10, 2)), N'Nguy?n Thi D', N'XiaoDing@gmail.com', N'0866046543', N'thôn 3, Ph??ng Ng?c Hà, Thành ph? Hà Giang, T?nh Hà Giang', NULL, NULL, N'ORD1743245281309826', CAST(N'2025-03-29T17:48:01.3066667' AS DateTime2), CAST(N'2025-03-29T17:48:29.0633333' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (22, 6, N'completed', CAST(268000.00 AS Decimal(10, 2)), N'Nguyen Hanh Nhan', N'user321@gmail.com', N'0866046598', N'thôn 6, Xã Mông Ân, Huy?n B?o Lâm, T?nh Cao B?ng', NULL, NULL, N'ORD174324554941174', CAST(N'2025-03-29T17:52:29.4100000' AS DateTime2), CAST(N'2025-03-29T17:52:50.5066667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (23, 4, N'pending_pay', CAST(480000.00 AS Decimal(10, 2)), N'Nguy?n V?n A', N'user123@gmail.com', N'0866046581', N'thôn 1, Xã Ng?c H?i, Huy?n Thanh Trì, Thành ph? Hà N?i', NULL, NULL, N'ORD17432534094115', CAST(N'2025-03-29T20:03:29.4166667' AS DateTime2), CAST(N'2025-03-29T20:03:29.4766667' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (24, 4, N'processing', CAST(225000.00 AS Decimal(10, 2)), N'Nguy?n V?n C', N'user123@gmail.com', N'0961004959', N'thôn 5, Xã Mông Ân, Huy?n B?o Lâm, T?nh Cao B?ng', NULL, NULL, N'ORD1743253488997649', CAST(N'2025-03-29T20:04:48.9966667' AS DateTime2), CAST(N'2025-03-29T20:04:49.0233333' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (25, 4, N'completed', CAST(237000.00 AS Decimal(10, 2)), N'Nguy?n V?n C', N'user123@gmail.com', N'0961004959', N'thôn 5, Xã Mông Ân, Huy?n B?o Lâm, T?nh Cao B?ng', NULL, NULL, N'ORD1743253560350921', CAST(N'2025-03-29T20:06:00.3500000' AS DateTime2), CAST(N'2025-03-29T20:06:27.8500000' AS DateTime2))
GO
INSERT [dbo].[orders] ([id], [user_id], [status], [total_amount], [recipient_name], [recipient_email], [recipient_phone], [recipient_address], [shipping_code], [shiping_name], [notes], [created_at], [updated_at]) VALUES (26, 4, N'returned', CAST(180000.00 AS Decimal(10, 2)), N'Nguy?n Thi B', N'user123@gmail.com', N'0866046585', N'thôn 4, Ph??ng Duy?t Trung, Thành ph? Cao B?ng, T?nh Cao B?ng', NULL, NULL, N'ORD1743253679026823', CAST(N'2025-03-29T20:07:59.0233333' AS DateTime2), CAST(N'2025-03-29T20:08:25.3466667' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[order_items] ON 
GO

-- Order 1: Toyota Vios và Honda City
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (1, 1, 1, N'Toyota Vios 2023', N'https://i1-vnexpress.vnecdn.net/2023/05/08/vios-1683532902-8865-1683532941.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=m2w2CqYm7Lbnu2DcOgTz4w', N'Sedan 5 chỗ - Trắng', 3, CAST(500000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (2, 1, 2, N'Honda City 2024', N'https://otohondaquan2.vn/wp-content/uploads/2023/02/honda-city-rs-2024-10.jpg', N'Sedan 5 chỗ - Xanh', 1, CAST(600000.00 AS Decimal(10, 2)))
GO

-- Order 2: Mazda CX-5 và Toyota Corolla Cross
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (3, 2, 3, N'Mazda CX-5 2024', N'https://www.planetemazda.com/wp-content/uploads/2023/08/mazda-CX-5-models-KURO.jpg', N'SUV 5 chỗ - Đỏ', 1, CAST(1000000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (4, 2, 16, N'Toyota Corolla Cross 2024', N'https://images2.thanhnien.vn/528068263637045248/2024/4/7/toyota-corolla-cross-2024-ban-ra-tai-viet-nam-tu-thang-5-1-xe-thanhnien-1712485293977811861623.jpg', N'SUV 5 chỗ - Trắng', 2, CAST(780000.00 AS Decimal(10, 2)))
GO

-- Order 3: Hyundai Tucson
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (5, 3, 14, N'Hyundai Tucson 2024', N'https://hyundaitphcm.vn/wp-content/uploads/2024/07/hyundaitphcm.com_.vn-21.jpg', N'SUV 5 chỗ - Xám', 2, CAST(1000000.00 AS Decimal(10, 2)))
GO

-- Order 4: Hyundai Accent và Kia Cerato
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (6, 4, 10, N'Hyundai Accent 2024', N'https://hyundaibinhduong.com/wp-content/uploads/2023/10/Accent-all-new-thumb-02.png', N'Sedan 5 chỗ - Đen', 2, CAST(480000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (7, 4, 12, N'Kia Cerato 2024', N'https://camco.vn/wp-content/uploads/2024/08/cam-xe-ngan-hang-uy-tin1-scaled.jpg', N'Sedan 5 chỗ - Trắng', 1, CAST(550000.00 AS Decimal(10, 2)))
GO

-- Order 5: Suzuki Ertiga
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (8, 5, 28, N'Suzuki Ertiga 2024', N'https://giaxeoto.vn/admin/upload/images/suzuki-ertiga-2024-danh-gia-xe-gia-lan-banh-uu-dai-012024-1704852153.jpg', N'MPV 7 chỗ - Nâu', 1, CAST(550000.00 AS Decimal(10, 2)))
GO

-- Order 6: VinFast Lux A2.0
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (9, 6, 32, N'VinFast Lux A2.0 2024', N'https://oto360.net/images/xe/VinfastLuxA2.0/A2.0-1.webp', N'Sedan 5 chỗ - Bạc', 1, CAST(780000.00 AS Decimal(10, 2)))
GO

-- Order 7: Mazda 6
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (10, 7, 31, N'Mazda 6 2024', N'https://images2.thanhnien.vn/528068263637045248/2024/8/13/mazda6-2-17235225055131572948703.jpg', N'Sedan 5 chỗ - Xám', 2, CAST(880000.00 AS Decimal(10, 2)))
GO

-- Order 8: Honda CR-V, Mazda 3 và Toyota Vios
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (11, 8, 13, N'Honda CR-V 2024', N'https://i.ytimg.com/vi/tK5PVBxd6QY/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBS7CkupWhHxt72K5XpnANAVHN17g', N'SUV 5 chỗ - Xanh', 2, CAST(950000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (12, 8, 11, N'Mazda 3 2024', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYli5hidQc8fj0Y7czy1y9T52wiktrim1pHw&s', N'Sedan 5 chỗ - Trắng sọc đen', 1, CAST(650000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (13, 8, 1, N'Toyota Vios 2023', N'https://i1-vnexpress.vnecdn.net/2023/05/08/vios-1683532902-8865-1683532941.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=m2w2CqYm7Lbnu2DcOgTz4w', N'Sedan 5 chỗ - Xanh nhạt', 2, CAST(500000.00 AS Decimal(10, 2)))
GO

-- Order 9: VinFast Lux A2.0, Mazda 6, Toyota Camry và Kia Carnival
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (14, 9, 32, N'VinFast Lux A2.0 2024', N'https://oto360.net/images/xe/VinfastLuxA2.0/A2.0-1.webp', N'Sedan 5 chỗ - Xanh navy', 2, CAST(780000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (15, 9, 31, N'Mazda 6 2024', N'https://images2.thanhnien.vn/528068263637045248/2024/8/13/mazda6-2-17235225055131572948703.jpg', N'Sedan 5 chỗ - Xám', 1, CAST(880000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (16, 9, 30, N'Toyota Camry 2024', N'https://i-vnexpress.vnecdn.net/2023/06/05/1-JPG-4069-1671024428-6515-1685951882.jpg', N'Sedan 5 chỗ - Xanh đậm', 1, CAST(1050000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (17, 9, 27, N'Kia Carnival 2024', N'https://www.bisonic.vn/wp-content/uploads/2024/03/kia-carnival-2022.jpg', N'MPV 7 chỗ - Đen', 1, CAST(1400000.00 AS Decimal(10, 2)))
GO

-- Order 10: Toyota Innova Cross và Suzuki Ertiga
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (18, 10, 6, N'Toyota Innova Cross 2024', N'https://drive.gianhangvn.com/image/9lhcu5l-2519801j24864.jpg', N'MPV 7 chỗ - Đỏ', 1, CAST(850000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (19, 10, 28, N'Suzuki Ertiga 2024', N'https://giaxeoto.vn/admin/upload/images/suzuki-ertiga-2024-danh-gia-xe-gia-lan-banh-uu-dai-012024-1704852153.jpg', N'MPV 7 chỗ - Đen', 1, CAST(550000.00 AS Decimal(10, 2)))
GO

-- Order 11: Honda Accord
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (20, 11, 29, N'Honda Accord 2024', N'https://www.tonyhondahilo.com/blogs/4420/wp-content/uploads/2024/05/Capture2.jpg', N'Sedan 5 chỗ - Xanh da trời', 1, CAST(950000.00 AS Decimal(10, 2)))
GO

-- Order 12: VinFast Lux A2.0
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (21, 12, 32, N'VinFast Lux A2.0 2024', N'https://oto360.net/images/xe/VinfastLuxA2.0/A2.0-1.webp', N'Sedan 5 chỗ - Bạc', 1, CAST(780000.00 AS Decimal(10, 2)))
GO

-- Order 13: Hyundai Tucson, VinFast Lux A2.0 và Suzuki Ertiga
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (22, 13, 14, N'Hyundai Tucson 2024', N'https://hyundaitphcm.vn/wp-content/uploads/2024/07/hyundaitphcm.com_.vn-21.jpg', N'SUV 5 chỗ - Xám', 2, CAST(1000000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (23, 13, 32, N'VinFast Lux A2.0 2024', N'https://oto360.net/images/xe/VinfastLuxA2.0/A2.0-1.webp', N'Sedan 5 chỗ - Be', 2, CAST(780000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (24, 13, 28, N'Suzuki Ertiga 2024', N'https://giaxeoto.vn/admin/upload/images/suzuki-ertiga-2024-danh-gia-xe-gia-lan-banh-uu-dai-012024-1704852153.jpg', N'MPV 7 chỗ - Nâu', 1, CAST(550000.00 AS Decimal(10, 2)))
GO

-- Order 14: Ford Everest
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (25, 14, 5, N'Ford Everest 2024', N'https://thaibinhford.com/public/upload/images/hinh_sanpham/ford-everest-the-he-moi-2024-platinum-4x4-at-ford-everest-the-he-moi-2024-platinum-4x4-at-1712982260306.jpg', N'SUV 7 chỗ - Xanh', 1, CAST(1400000.00 AS Decimal(10, 2)))
GO

-- Order 15: Mitsubishi Xpander
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (26, 15, 17, N'Mitsubishi Xpander 2024', N'https://static.vnfinance.vn/files/admin/2024/09/23/mitsubishi-xpander-2024-ra-mat-voi-thiet-ke-dep-long-lanh-trang-bi-cuc-chat-gia-tu-541-trieu-dong-anh-1-1157091.jpg', N'MPV 7 chỗ - Hồng', 1, CAST(650000.00 AS Decimal(10, 2)))
GO

-- Order 16: Kia Carnival
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (27, 16, 27, N'Kia Carnival 2024', N'https://www.bisonic.vn/wp-content/uploads/2024/03/kia-carnival-2022.jpg', N'MPV 7 chỗ - Đen', 1, CAST(1400000.00 AS Decimal(10, 2)))
GO

-- Order 17: Honda Accord và Ford Everest
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (28, 17, 29, N'Honda Accord 2024', N'https://www.tonyhondahilo.com/blogs/4420/wp-content/uploads/2024/05/Capture2.jpg', N'Sedan 5 chỗ - Xanh da trời', 4, CAST(950000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (29, 17, 5, N'Ford Everest 2024', N'https://thaibinhford.com/public/upload/images/hinh_sanpham/ford-everest-the-he-moi-2024-platinum-4x4-at-ford-everest-the-he-moi-2024-platinum-4x4-at-1712982260306.jpg', N'SUV 7 chỗ - Đỏ', 2, CAST(1400000.00 AS Decimal(10, 2)))
GO

-- Order 18: Kia Cerato, Toyota Innova Cross, Mazda 6, Toyota Camry và Toyota Vios
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (30, 18, 12, N'Kia Cerato 2024', N'https://camco.vn/wp-content/uploads/2024/08/cam-xe-ngan-hang-uy-tin1-scaled.jpg', N'Sedan 5 chỗ - Đen', 3, CAST(550000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (31, 18, 6, N'Toyota Innova Cross 2024', N'https://drive.gianhangvn.com/image/9lhcu5l-2519801j24864.jpg', N'MPV 7 chỗ - Đỏ', 4, CAST(850000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (32, 18, 31, N'Mazda 6 2024', N'https://images2.thanhnien.vn/528068263637045248/2024/8/13/mazda6-2-17235225055131572948703.jpg', N'Sedan 5 chỗ - Xám', 1, CAST(880000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (33, 18, 30, N'Toyota Camry 2024', N'https://i-vnexpress.vnecdn.net/2023/06/05/1-JPG-4069-1671024428-6515-1685951882.jpg', N'Sedan 5 chỗ - Đen', 1, CAST(1050000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (34, 18, 1, N'Toyota Vios 2023', N'https://i1-vnexpress.vnecdn.net/2023/05/08/vios-1683532902-8865-1683532941.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=m2w2CqYm7Lbnu2DcOgTz4w', N'Sedan 5 chỗ - Trắng', 1, CAST(500000.00 AS Decimal(10, 2)))
GO

-- Order 19: Mazda 3
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (35, 19, 11, N'Mazda 3 2024', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYli5hidQc8fj0Y7czy1y9T52wiktrim1pHw&s', N'Sedan 5 chỗ - Xanh', 1, CAST(650000.00 AS Decimal(10, 2)))
GO

-- Order 20: Mazda 6, Toyota Camry và Mercedes C200
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (36, 20, 31, N'Mazda 6 2024', N'https://images2.thanhnien.vn/528068263637045248/2024/8/13/mazda6-2-17235225055131572948703.jpg', N'Sedan 5 chỗ - Đen', 1, CAST(880000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (37, 20, 30, N'Toyota Camry 2024', N'https://i-vnexpress.vnecdn.net/2023/06/05/1-JPG-4069-1671024428-6515-1685951882.jpg', N'Sedan 5 chỗ - Xanh đậm', 1, CAST(1050000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (38, 20, 8, N'Mercedes C200 2024', N'https://images.drive.com.au/driveau/image/upload/t_wp-default/v1/cms/uploads/pd7cptqcdxjwgv0vzc8s', N'Sedan 5 chỗ - Bạc', 1, CAST(2200000.00 AS Decimal(10, 2)))
GO

-- Order 21: BMW 530i, Mitsubishi Xpander, Lexus RX, Mercedes GLC, Mercedes C200 và BMW X3
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (39, 21, 9, N'BMW 530i 2024', N'https://hips.hearstapps.com/hmg-prod/images/2024-bmw-530i-xdrive-118-65808a4c3d44a.jpg?crop=0.561xw:0.474xh;0.171xw,0.327xh&resize=1200:*', N'Sedan 5 chỗ - Đen', 1, CAST(2500000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (40, 21, 17, N'Mitsubishi Xpander 2024', N'https://static.vnfinance.vn/files/admin/2024/09/23/mitsubishi-xpander-2024-ra-mat-voi-thiet-ke-dep-long-lanh-trang-bi-cuc-chat-gia-tu-541-trieu-dong-anh-1-1157091.jpg', N'MPV 7 chỗ - Hồng pastel', 1, CAST(650000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (41, 21, 25, N'Lexus RX 350 2024', N'https://www.lexus.com.vn/content/dam/lexus-v3-blueprint/models/suv/rx/rx-350/my23/overview/lexus-rx-350-overview-mgp.jpg', N'SUV 5 chỗ - Trắng', 1, CAST(2900000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (42, 21, 23, N'Mercedes GLC 300 2024', N'https://mercedeshaxaco.com.vn/wp-content/uploads/mercedes-benz-glc-300-4matic-all-new-2023-2024-2025-2026-2027-2028-noi-that-ngoai-that-mercedeshaxaco-com-vn-3.jpg', N'SUV 5 chỗ - Đen', 1, CAST(2500000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (43, 21, 8, N'Mercedes C200 2024', N'https://images.drive.com.au/driveau/image/upload/t_wp-default/v1/cms/uploads/pd7cptqcdxjwgv0vzc8s', N'Sedan 5 chỗ - Bạc', 1, CAST(2200000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (44, 21, 24, N'BMW X3 xDrive30i 2024', N'https://hips.hearstapps.com/hmg-prod/images/2024-bmw-x3-101-64e782a68ab3d.jpg?crop=0.945xw:0.809xh;0,0.156xh&resize=2048:*', N'SUV 5 chỗ - Kem', 1, CAST(2600000.00 AS Decimal(10, 2)))
GO

-- Order 22: Mazda 3
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (45, 22, 11, N'Mazda 3 2024', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYli5hidQc8fj0Y7czy1y9T52wiktrim1pHw&s', N'Sedan 5 chỗ - Xanh nhạt sọc trắng', 1, CAST(650000.00 AS Decimal(10, 2)))
GO

-- Order 23: Mazda 6 và VinFast Lux A2.0
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (46, 23, 31, N'Mazda 6 2024', N'https://images2.thanhnien.vn/528068263637045248/2024/8/13/mazda6-2-17235225055131572948703.jpg', N'Sedan 5 chỗ - Đen', 1, CAST(880000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (47, 23, 32, N'VinFast Lux A2.0 2024', N'https://oto360.net/images/xe/VinfastLuxA2.0/A2.0-1.webp', N'Sedan 5 chỗ - Bạc', 1, CAST(780000.00 AS Decimal(10, 2)))
GO

-- Order 24: Kia Seltos
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (48, 24, 15, N'Kia Seltos 2024', N'https://auto365.vn/uploads/images/tin%20t%E1%BB%A9c/2024/T1/kia-seltos-2024/kia-seltos-2024-1.jpg', N'SUV 5 chỗ - Trắng', 1, CAST(820000.00 AS Decimal(10, 2)))
GO

-- Order 25: VinFast Lux A2.0
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (49, 25, 32, N'VinFast Lux A2.0 2024', N'https://oto360.net/images/xe/VinfastLuxA2.0/A2.0-1.webp', N'Sedan 5 chỗ - Vàng hồng', 1, CAST(780000.00 AS Decimal(10, 2)))
GO

-- Order 26: Honda Accord
INSERT [dbo].[order_items] ([id], [order_id], [car_id], [car_name], [car_image], [variant_name], [quantity], [unit_price_at_order]) 
VALUES (50, 26, 29, N'Honda Accord 2024', N'https://www.tonyhondahilo.com/blogs/4420/wp-content/uploads/2024/05/Capture2.jpg', N'Sedan 5 chỗ - Trắng', 1, CAST(950000.00 AS Decimal(10, 2)))
GO

SET IDENTITY_INSERT [dbo].[order_items] OFF
GO

SET IDENTITY_INSERT [dbo].[feedback] ON 
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (1, 30, 12, 5, N'Honda City 2024 ch?t l??ng r?t t?t, v?n hành êm ái nh?ng v?n m?nh m?, ti?t ki?m nhiên li?u. Thi?t k? ??p m?t, r?t phù h?p ?? ?i làm ho?c ?i du l?ch gia ?ình. Giao xe nhanh, th? t?c c?n th?n. Mình s? ti?p t?c ?ng h? showroom!', N'approved', CAST(N'2025-03-29T17:22:11.5233333' AS DateTime2), CAST(N'2025-03-29T17:54:40.1633333' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (2, 31, 12, 4, N'Toyota Vios ??p, l?p ráp ch?c ch?n, ch?t li?u n?i th?t m?m m?i. Tuy nhiên, mình ??t b?n tiêu chu?n h?i thi?u tính n?ng m?t chút, l?n sau mình s? ch?n b?n cao c?p h?n. Nhìn chung r?t ?áng mua!', N'approved', CAST(N'2025-03-29T17:22:11.5433333' AS DateTime2), CAST(N'2025-03-29T17:56:39.7266667' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (3, 32, 12, 3, N'Mazda 3 ??p, ch?t li?u gh? m?m m?i, l?p ráp ch?c ch?n. Tuy nhiên, ph?n c?p h?i nh? so v?i nhu c?u c?a mình, ph?i s?p x?p l?i m?t chút. Nh?ng t?ng th? v?n r?t ?áng mua!', N'approved', CAST(N'2025-03-29T17:22:11.5500000' AS DateTime2), CAST(N'2025-03-29T17:56:51.6433333' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (4, 33, 12, 2, N'Hyundai Accent có thi?t k? ??p nh?ng ch?t l??ng ch?a t?t. H? th?ng treo c?ng và h?i ?n, lái không tho?i mái l?m. Mình ??t b?n s? sàn nh?ng ph?n ly h?p h?i n?ng, ph?i ?i?u ch?nh l?i. Giao xe khá lâu so v?i d? ki?n. Hy v?ng showroom c?i thi?n ch?t l??ng và d?ch v?!', N'approved', CAST(N'2025-03-29T17:22:11.5566667' AS DateTime2), CAST(N'2025-03-29T17:56:47.4100000' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (5, 34, 12, 5, N'Mercedes C-Class ??p xu?t s?c! Ch?t li?u n?i th?t cao c?p, sang tr?ng, lái r?t tho?i mái. Thi?t k? thanh l?ch, lên dáng ??ng c?p, phù h?p c? ?i làm và ?i ch?i. Giao xe nhanh, th? t?c c?n th?n. R?t hài lòng, s? ?ng h? showroom l?n sau!', N'approved', CAST(N'2025-03-29T17:22:11.5600000' AS DateTime2), CAST(N'2025-03-29T17:56:43.9533333' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (6, 28, 12, 5, N'Xe ??p tr? em siêu d? th??ng! Ch?t li?u khung nh?, bánh xe bám ???ng t?t, h? th?ng phanh nh?y nên bé ??p r?t tho?i mái. Màu s?n s?c nét, không b? bong tróc sau th?i gian s? d?ng. Giao hàng nhanh, ?óng gói c?n th?n. R?t hài lòng, s? mua thêm m?u khác cho bé!', N'approved', CAST(N'2025-03-29T17:23:29.9666667' AS DateTime2), CAST(N'2025-03-29T17:54:36.8333333' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (7, 29, 12, 3, N'Xe máy Honda Vision thi?t k? ??p, màu s?n rõ nét nh?ng yên xe h?i m?ng so v?i mong ??i. Sau th?i gian s? d?ng, có hi?n t??ng rung l?t nh?. Giao xe ?úng h?n, nh?ng mong showroom c?i thi?n ch?t l??ng h?n!', N'approved', CAST(N'2025-03-29T17:23:29.9733333' AS DateTime2), CAST(N'2025-03-29T17:54:31.2766667' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (8, 18, 6, 4, N'Vinfast VF8 thi?t k? ??p, công ngh? hi?n ??i, r?t phù h?p cho th?i ??i xe ?i?n. Tuy nhiên, tr?m s?c còn ít và c?n lên k? ho?ch k? tr??c khi ?i xa. T?m ho?t ??ng c?ng h?i ng?n so v?i k? v?ng. Giao xe nhanh, nh?ng mong hãng c?i thi?n h? t?ng s?c h?n!', N'approved', CAST(N'2025-03-29T17:26:23.8400000' AS DateTime2), CAST(N'2025-03-29T17:54:27.4100000' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (9, 19, 6, 5, N'L?p xe Michelin r?t b?n, ?? bám ???ng t?t và ?n ??nh, ch?y lâu không b? mòn nhanh. Ch?t li?u cao c?p, không có mùi khó ch?u. Thi?t k? gai l?p t?i ?u, r?t ?áng ti?n. Giao hàng nhanh, ?óng gói c?n th?n. R?t hài lòng!', N'approved', CAST(N'2025-03-29T17:26:23.8600000' AS DateTime2), CAST(N'2025-03-29T17:54:23.0566667' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (10, 14, 6, 4, N'Ford Ranger ch?t li?u t?t, khung g?m ch?c ch?n nh?ng v?n v?n hành êm, lái khá tho?i mái. Thi?t k? b?n b?, l?p ráp ch?c ch?n. Tuy nhiên, màu s?n th?c t? h?i khác so v?i hình ?nh. Giao xe nhanh, showroom t? v?n nhi?t tình. Nhìn chung r?t hài lòng!', N'approved', CAST(N'2025-03-29T17:28:21.6100000' AS DateTime2), CAST(N'2025-03-29T17:54:19.9366667' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (11, 15, 6, 3, N'Kia Morning có thi?t k? xinh, giá ph?i ch?ng nh?ng ch?t li?u n?i th?t h?i ??n gi?n và d? tr?y x??c. L?p ráp ch?a th?c s? ch?c ch?n, s? d?ng vài tháng có d?u hi?u kêu l?ch c?ch nh?. Giao xe ?úng h?n. Mong showroom c?i thi?n ch?t l??ng h?n!', N'approved', CAST(N'2025-03-29T17:28:21.6133333' AS DateTime2), CAST(N'2025-03-29T17:54:17.9933333' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (12, 16, 6, 3, N'Toyota Fortuner có thi?t k? ??p, d? ph?i ??. Tuy nhiên, tiêu hao nhiên li?u h?i cao và không êm nh? mong ??i. Màu s?n c?ng h?i khác so v?i hình ?nh. Giao xe nhanh nh?ng mong showroom c?i thi?n ch?t l??ng ??ng c? h?n!', N'approved', CAST(N'2025-03-29T17:28:21.6200000' AS DateTime2), CAST(N'2025-03-29T17:54:15.6400000' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (13, 17, 6, 5, N'Ph? tùng ??ng c? Honda siêu t?t, nh? g?n nh?ng ch?a ???c khá nhi?u chi ti?t quan tr?ng. Ch?t li?u ??p, kim lo?i b?n b?, l?p ráp ch?c ch?n. D? l?p ??t và b?o d??ng linh ho?t. R?t d? dùng, phù h?p cho c? th? chuyên nghi?p và ng??i t? s?a. Giao hàng nhanh, ?óng gói c?n th?n. R?t ?ng ý!', N'approved', CAST(N'2025-03-29T17:28:21.6200000' AS DateTime2), CAST(N'2025-03-29T17:54:13.7066667' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (14, 39, 7, 3, N'BMW 3 Series có thi?t k? ??p, ki?u dáng th? thao. Tuy nhiên, h? th?ng treo h?i c?ng h?n so v?i mong ??i, lái trong thành ph? không ?? êm. L?p ráp ?n nh?ng h? th?ng ?i?u hòa h?i y?u. Giao xe ?úng h?n. Mong showroom c?i thi?n ch?t l??ng h?n!', N'approved', CAST(N'2025-03-29T17:51:07.7933333' AS DateTime2), CAST(N'2025-03-29T17:54:11.1800000' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (15, 40, 7, 5, N'Xe ??p mini cho bé siêu ??p, bé nhà mình r?t thích! Ch?t li?u khung nh?, không gây ng?a hay khó ch?u. Thi?t k? ?áng yêu, màu s?c ?úng nh? hình, l?p ráp ch?c ch?n. ??p lên nhìn yêu l?m! Giao hàng nhanh, ?óng gói c?n th?n. R?t hài lòng!', N'approved', CAST(N'2025-03-29T17:51:07.8133333' AS DateTime2), CAST(N'2025-03-29T17:54:07.0966667' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (16, 41, 7, 4, N'Mitsubishi Xpander r?t ti?n d?ng, thi?t k? nh? nhàng, ?a n?ng. N?i th?t r?ng rãi, thoáng mát, lái mùa hè r?t d? ch?u. Tuy nhiên, xe h?i dài h?n so v?i mong ??i, ?? xe ph?i c?n th?n m?t chút. Giao xe nhanh, ?óng gói c?n th?n. Nhìn chung r?t hài lòng!', N'approved', CAST(N'2025-03-29T17:51:07.8133333' AS DateTime2), CAST(N'2025-03-29T17:54:09.1333333' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (17, 42, 7, 2, N'Camera hành trình có thi?t k? ??p nh?ng ch?t l??ng ch?a t?t. ?ng kính h?i m?, ?eo lâu không rõ nét. Kh? n?ng quay ban ?êm không hi?u qu? nh? mong ??i. Giao hàng ?úng h?n nh?ng s?n ph?m ch?a th?c s? ?ng ý. Mong shop c?i thi?n ch?t l??ng h?n!', N'approved', CAST(N'2025-03-29T17:51:07.8200000' AS DateTime2), CAST(N'2025-03-29T17:54:04.9000000' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (18, 43, 7, 4, N'Dây curoa ô tô ??p, thi?t k? tinh t? và b?n b?. Ch?t li?u cao su t?t, l?p không b? tr??t ??ng c?. Tuy nhiên, dây h?i c?ng h?n so v?i t??ng t??ng, c?n gi? gìn c?n th?n. Giao hàng nhanh, ?óng gói c?n th?n. Nhìn chung r?t ?ng ý!', N'approved', CAST(N'2025-03-29T17:51:07.8233333' AS DateTime2), CAST(N'2025-03-29T17:54:02.6400000' AS DateTime2))
GO
INSERT [dbo].[feedback] ([id], [order_item_id], [user_id], [rating], [comment], [status], [created_at], [updated_at]) VALUES (19, 44, 7, 5, N'Lexus RX 350 c?c ??p, lái r?t êm, không b? rung dù di chuy?n c? ngày. Ch?t li?u n?i th?t sang tr?ng, l?p ráp ch?c ch?n, thi?t k? thanh l?ch và d? v?n hành. Giao xe nhanh, th? t?c c?n th?n. R?t hài lòng, s? ?ng h? showroom l?n sau!', N'approved', CAST(N'2025-03-29T17:51:07.8266667' AS DateTime2), CAST(N'2025-03-29T17:54:00.9266667' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[feedback] OFF
GO


SET IDENTITY_INSERT [dbo].[feedback_reply] ON 
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (1, 19, 3, N'C?m ?n anh/ch? ?ã dành th?i gian ?ánh giá s?n ph?m! ?? Showroom r?t vui khi bi?t anh/ch? hài lòng v?i chi?c Lexus RX 350  v?a ??p, v?a êm ái l?i tho?i mái khi v?n hành. ?? Chúng em luôn n? l?c mang ??n nh?ng s?n ph?m ch?t l??ng và tr?i nghi?m mua xe tuy?t v?i nh?t. Hy v?ng s? ti?p t?c ???c ph?c v? anh/ch? trong nh?ng l?n mua xe ti?p theo! N?u c?n h? tr? gì, ??ng ng?i liên h? v?i showroom nhé!???', CAST(N'2025-03-29T17:58:46.1566667' AS DateTime2), CAST(N'2025-03-29T17:58:46.1566667' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (2, 18, 3, N'**Ph?n h?i t? Showroom:**  

"C?m ?n anh/ch? ?ã tin t??ng và dành nh?ng l?i khen cho s?n ph?m c?a showroom! ?? R?t vui khi anh/ch? hài lòng v?i thi?t k? và ch?t l??ng c?a dây curoa. ?? Showroom s? ti?p t?c c?i thi?n ?? mang ??n nh?ng s?n ph?m ngày càng hoàn thi?n h?n. N?u c?n t? v?n thêm v? cách b?o qu?n ph? tùng ?? luôn b?n ??p, anh/ch? c? nh?n showroom nhé! Hy v?ng s? ???c ph?c v? anh/ch? trong nh?ng l?n mua s?m ti?p theo! ??"  ', CAST(N'2025-03-29T17:59:18.0233333' AS DateTime2), CAST(N'2025-03-29T17:59:18.0233333' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (3, 17, 3, N'C?m ?n anh/ch? ?ã dành th?i gian chia s? ý ki?n v? s?n ph?m! ?? Showroom r?t ti?c khi s?n ph?m ch?a ?áp ?ng hoàn toàn mong ??i c?a anh/ch?. Chúng em ghi nh?n góp ý v? ch?t l??ng camera và s? làm vi?c v?i nhà cung c?p ?? c?i thi?n t?t h?n. N?u anh/ch? c?n h? tr? ??i tr? ho?c có b?t k? th?c m?c nào, vui lòng liên h? v?i showroom ?? ???c h? tr? nhanh nh?t ??. R?t mong có c? h?i ph?c v? anh/ch? t?t h?n trong l?n mua xe ti?p theo! ??', CAST(N'2025-03-29T17:59:34.6433333' AS DateTime2), CAST(N'2025-03-29T17:59:34.6433333' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (4, 15, 3, N'C?m ?n anh/ch? ?ã tin t??ng và dành nh?ng l?i khen cho s?n ph?m c?a showroom! ?? R?t vui khi bé nhà mình yêu thích chi?c xe ??p mini này! ???? Showroom luôn c? g?ng mang ??n nh?ng m?u xe d? th??ng, ch?t li?u t?t nh?t cho bé yêu. Hy v?ng s? ti?p t?c ???c ph?c v? anh/ch? và bé trong nh?ng l?n mua s?m ti?p theo! N?u c?n t? v?n thêm, anh/ch? c? nh?n showroom nhé! ??', CAST(N'2025-03-29T17:59:52.5233333' AS DateTime2), CAST(N'2025-03-29T17:59:52.5233333' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (5, 16, 3, N'"C?m ?n anh/ch? ?ã dành th?i gian ?ánh giá s?n ph?m! ?? R?t vui khi anh/ch? ?ng ý v?i thi?t k? và n?i th?t c?a Mitsubishi Xpander. ??? Showroom ghi nh?n góp ý v? kích th??c xe và s? xem xét ?? t? v?n k? h?n trong nh?ng l?n sau. Hy v?ng s? ti?p t?c ???c ph?c v? anh/ch? trong nh?ng l?n mua xe ti?p theo. N?u c?n h? tr? gì thêm, anh/ch? c? nh?n showroom nhé! ??', CAST(N'2025-03-29T18:00:07.5200000' AS DateTime2), CAST(N'2025-03-29T18:00:07.5200000' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (6, 14, 3, N'C?m ?n anh/ch? ?ã dành th?i gian chia s? ?ánh giá! ?? R?t vui khi anh/ch? ?ng ý v?i thi?t k? th? thao c?a BMW 3 Series. ??? Showroom ghi nh?n góp ý v? h? th?ng treo và ?i?u hòa, và s? làm vi?c v?i hãng ?? c?i thi?n ch?t l??ng t?t h?n. N?u c?n h? tr? thêm, anh/ch? c? nh?n showroom nhé! Hy v?ng s? có c? h?i ph?c v? anh/ch? trong nh?ng l?n mua xe ti?p theo! ??', CAST(N'2025-03-29T18:00:26.0566667' AS DateTime2), CAST(N'2025-03-29T18:00:26.0566667' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (7, 12, 3, N'C?m ?n anh/ch? ?ã dành th?i gian ?ánh giá s?n ph?m! ?? R?t vui khi anh/ch? ?ng ý v?i thi?t k? c?a Toyota Fortuner. Showroom ghi nh?n góp ý v? m?c tiêu hao nhiên li?u và ?? êm, và s? xem xét ?? c?i thi?n h?n trong nh?ng ??i xe sau. ?? Hy v?ng s? ti?p t?c ???c ph?c v? anh/ch? trong nh?ng l?n mua xe ti?p theo. N?u c?n h? tr? gì thêm, anh/ch? c? nh?n showroom nhé! ??', CAST(N'2025-03-29T18:00:44.2233333' AS DateTime2), CAST(N'2025-03-29T18:00:44.2233333' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (8, 13, 3, N'C?m ?n anh/ch? ?ã tin t??ng và dành nh?ng l?i khen cho s?n ph?m c?a showroom! ?? R?t vui khi anh/ch? hài lòng v?i ph? tùng ??ng c? Honda  v?a nh? g?n, ti?n l?i l?i d? l?p ??t. ??? Showroom luôn c? g?ng mang ??n nh?ng s?n ph?m ch?t l??ng và tr?i nghi?m mua s?m t?t nh?t. Hy v?ng s? ti?p t?c ???c ph?c v? anh/ch? trong nh?ng l?n mua s?m ti?p theo! N?u c?n h? tr? gì, ??ng ng?i nh?n showroom nhé! ??', CAST(N'2025-03-29T18:01:03.4733333' AS DateTime2), CAST(N'2025-03-29T18:01:03.4733333' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (9, 11, 3, N'C?m ?n anh/ch? ?ã dành th?i gian chia s? ?ánh giá! ?? R?t vui khi anh/ch? ?ng ý v?i thi?t k? c?a Kia Morning. Showroom ghi nh?n góp ý v? ch?t li?u n?i th?t và l?p ráp, và s? làm vi?c v?i hãng ?? c?i thi?n ch?t l??ng t?t h?n. ?? Hy v?ng s? ti?p t?c ???c ph?c v? anh/ch? trong nh?ng l?n mua xe ti?p theo. N?u c?n h? tr? gì thêm, anh/ch? c? nh?n showroom nhé! ??', CAST(N'2025-03-29T18:01:19.6366667' AS DateTime2), CAST(N'2025-03-29T18:01:19.6366667' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (10, 10, 3, N'C?m ?n anh/ch? ?ã tin t??ng và dành th?i gian ?ánh giá s?n ph?m! ?? R?t vui khi anh/ch? hài lòng v?i ch?t li?u, thi?t k? và s? t? v?n nhi?t tình t? showroom. ???? Showroom ghi nh?n góp ý v? màu s?n và s? c? g?ng c?i thi?n hình ?nh s?n ph?m ?? khách hàng có tr?i nghi?m mua xe t?t h?n. Hy v?ng s? ti?p t?c ???c ph?c v? anh/ch? trong nh?ng l?n mua xe ti?p theo! N?u c?n h? tr? gì thêm, anh/ch? c? nh?n showroom nhé! ??', CAST(N'2025-03-29T18:01:36.0066667' AS DateTime2), CAST(N'2025-03-29T18:01:36.0066667' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (11, 9, 3, N'C?m ?n anh/ch? ?ã dành th?i gian ?ánh giá s?n ph?m! ?? R?t vui khi anh/ch? hài lòng v?i l?p xe Michelin  v?a b?n, bám ???ng t?t l?i tho?i mái khi s? d?ng. ??? Showroom luôn c? g?ng mang ??n nh?ng s?n ph?m ch?t l??ng và tr?i nghi?m mua s?m t?t nh?t. Hy v?ng s? ti?p t?c ???c ph?c v? anh/ch? trong nh?ng l?n mua s?m ti?p theo! N?u c?n h? tr? gì, ??ng ng?i nh?n showroom nhé! ??', CAST(N'2025-03-29T18:01:53.8200000' AS DateTime2), CAST(N'2025-03-29T18:01:53.8200000' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (12, 8, 3, N'C?m ?n anh/ch? ?ã chia s? ?ánh giá chi ti?t v? s?n ph?m! ?? R?t vui khi anh/ch? ?ng ý v?i thi?t k? và công ngh? c?a Vinfast VF8. ??? Showroom ghi nh?n góp ý v? h? t?ng tr?m s?c và t?m ho?t ??ng, và s? làm vi?c v?i hãng ?? c?i thi?n tr?i nghi?m t?t h?n. Hy v?ng s? ti?p t?c ???c ph?c v? anh/ch? trong nh?ng l?n mua xe ti?p theo! N?u c?n h? tr? gì thêm, anh/ch? c? nh?n showroom nhé! ??', CAST(N'2025-03-29T18:02:18.8900000' AS DateTime2), CAST(N'2025-03-29T18:02:18.8900000' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (13, 7, 3, N'C?m ?n anh/ch? ?ã dành th?i gian ?ánh giá s?n ph?m! ?? R?t vui khi anh/ch? hài lòng v?i thi?t k? và màu s?n c?a xe máy Honda Vision. ??? Showroom ghi nh?n góp ý v? yên xe và ?? rung, và s? làm vi?c v?i hãng ?? c?i thi?n h?n trong nh?ng ??i xe sau. Hy v?ng s? ti?p t?c ???c ph?c v? anh/ch? trong nh?ng l?n mua xe ti?p theo! N?u c?n h? tr? gì, anh/ch? c? nh?n showroom nhé! ??', CAST(N'2025-03-29T18:02:37.6566667' AS DateTime2), CAST(N'2025-03-29T18:02:37.6566667' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (14, 6, 3, N'C?m ?n anh/ch? ?ã tin t??ng và ?ng h? s?n ph?m c?a showroom! ?? R?t vui khi bé nhà mình ??p xe tho?i mái và ?ng ý v?i ch?t l??ng s?n ph?m. ???? Showroom luôn c? g?ng mang ??n nh?ng m?u xe d? th??ng, ch?t li?u t?t nh?t cho bé yêu. Hy v?ng s? ti?p t?c ???c ph?c v? anh/ch? trong nh?ng l?n mua s?m ti?p theo! N?u c?n t? v?n thêm, anh/ch? c? nh?n showroom nhé! ??', CAST(N'2025-03-29T18:02:57.6466667' AS DateTime2), CAST(N'2025-03-29T18:02:57.6466667' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (15, 5, 3, N'C?m ?n anh/ch? ?ã dành nh?ng l?i khen tuy?t v?i cho s?n ph?m c?a showroom! ?? R?t vui khi anh/ch? hài lòng v?i ch?t li?u, thi?t k? và s? sang tr?ng c?a Mercedes C-Class. ??? Showroom luôn c? g?ng mang ??n nh?ng s?n ph?m ch?t l??ng và tr?i nghi?m mua xe t?t nh?t. Hy v?ng s? ti?p t?c ???c ph?c v? anh/ch? trong nh?ng l?n mua xe ti?p theo! N?u c?n t? v?n thêm, anh/ch? c? nh?n showroom nhé! ??', CAST(N'2025-03-29T18:03:17.1533333' AS DateTime2), CAST(N'2025-03-29T18:03:17.1533333' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (16, 4, 3, N'C?m ?n anh/ch? ?ã chia s? ?ánh giá chi ti?t v? s?n ph?m! ?? R?t ti?c khi Hyundai Accent ch?a hoàn toàn ?áp ?ng mong ??i c?a anh/ch?. Showroom ghi nh?n góp ý v? h? th?ng treo, ly h?p và th?i gian giao xe ?? c?i thi?n t?t h?n trong t??ng lai. ?? N?u anh/ch? c?n h? tr? thêm v? b?o d??ng ho?c b?t k? v?n ?? gì, ??ng ng?i liên h? v?i showroom nhé! Hy v?ng s? có c? h?i ph?c v? anh/ch? t?t h?n trong l?n mua xe ti?p theo! ??', CAST(N'2025-03-29T18:03:40.1700000' AS DateTime2), CAST(N'2025-03-29T18:03:40.1700000' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (17, 3, 3, N'C?m ?n anh/ch? ?ã tin t??ng và dành l?i khen cho s?n ph?m c?a showroom! ?? R?t vui khi anh/ch? hài lòng v?i ch?t li?u và l?p ráp c?a Mazda 3. ?? Showroom ghi nh?n góp ý v? kích th??c c?p ?? c?i thi?n h?n trong nh?ng m?u sau. Hy v?ng s? ti?p t?c ???c ph?c v? anh/ch? trong nh?ng l?n mua xe ti?p theo! N?u c?n t? v?n thêm, anh/ch? c? nh?n showroom nhé! ??', CAST(N'2025-03-29T18:03:55.8633333' AS DateTime2), CAST(N'2025-03-29T18:03:55.8633333' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (18, 2, 3, N'C?m ?n anh/ch? ?ã tin t??ng và ?ánh giá s?n ph?m c?a showroom! ?? R?t vui khi anh/ch? hài lòng v?i ch?t li?u và l?p ráp c?a Toyota Vios. ?? N?u c?n t? v?n k? h?n v? các phiên b?n ?? ch?n ???c s?n ph?m phù h?p nh?t, anh/ch? c? nh?n showroom nhé! Hy v?ng s? ti?p t?c ???c ph?c v? anh/ch? trong nh?ng l?n mua xe ti?p theo! ??', CAST(N'2025-03-29T18:04:10.7900000' AS DateTime2), CAST(N'2025-03-29T18:04:10.7900000' AS DateTime2))
GO
INSERT [dbo].[feedback_reply] ([id], [feedback_id], [user_id], [comment], [created_at], [updated_at]) VALUES (19, 1, 3, N'C?m ?n anh/ch? ?ã tin t??ng và dành l?i khen cho s?n ph?m c?a showroom! ?? R?t vui khi anh/ch? hài lòng v?i ch?t l??ng v?n hành, thi?t k? và s? ti?n d?ng c?a Honda City. ??? Showroom luôn c? g?ng mang ??n nh?ng s?n ph?m t?t nh?t ?? khách hàng có tr?i nghi?m mua xe tuy?t v?i. Hy v?ng s? ti?p t?c ???c ph?c v? anh/ch? trong nh?ng l?n mua xe ti?p theo! N?u c?n t? v?n thêm, anh/ch? c? nh?n showroom nhé! ??', CAST(N'2025-03-29T18:04:27.9233333' AS DateTime2), CAST(N'2025-03-29T18:04:27.9233333' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[feedback_reply] OFF
GO

SET IDENTITY_INSERT [dbo].[customer_contact_history] ON 
GO
INSERT [dbo].[customer_contact_history] ([id], [user_id], [customer_type], [email], [full_name], [gender], [mobile], [total_purchases], [total_spend], [updated_at]) VALUES (1, 4, N'vip', N'user123@gmail.com', N'Nguy?n V?n A', N'male', N'0866046581', 2, CAST(1552000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T16:49:21.6900000' AS DateTime2))
GO
INSERT [dbo].[customer_contact_history] ([id], [user_id], [customer_type], [email], [full_name], [gender], [mobile], [total_purchases], [total_spend], [updated_at]) VALUES (2, 4, N'normal', N'user123@gmail.com', N'Nguy?n Thi B', N'male', N'0866046585', 1, CAST(510000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T16:51:17.9633333' AS DateTime2))
GO
INSERT [dbo].[customer_contact_history] ([id], [user_id], [customer_type], [email], [full_name], [gender], [mobile], [total_purchases], [total_spend], [updated_at]) VALUES (3, 4, N'vip', N'user123@gmail.com', N'Nguy?n V?n C', N'male', N'0961004959', 2, CAST(1067000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T20:06:27.8700000' AS DateTime2))
GO
INSERT [dbo].[customer_contact_history] ([id], [user_id], [customer_type], [email], [full_name], [gender], [mobile], [total_purchases], [total_spend], [updated_at]) VALUES (4, 6, N'vip', N'user321@gmail.com', N'Nguyen Hanh Nhan', N'male', N'0866046598', 3, CAST(2278000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T17:52:50.5100000' AS DateTime2))
GO
INSERT [dbo].[customer_contact_history] ([id], [user_id], [customer_type], [email], [full_name], [gender], [mobile], [total_purchases], [total_spend], [updated_at]) VALUES (5, 8, N'vip', N'Medusa@gmail.com', N'Nguyen Van Anh', N'female', N'0866046585', 1, CAST(1380000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T17:04:09.5000000' AS DateTime2))
GO
INSERT [dbo].[customer_contact_history] ([id], [user_id], [customer_type], [email], [full_name], [gender], [mobile], [total_purchases], [total_spend], [updated_at]) VALUES (6, 12, N'vip', N'GuYuan@gmail.com', N'Nguyen Hong Hanh', N'male', N'0961004935', 2, CAST(4130000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T17:10:40.6700000' AS DateTime2))
GO
INSERT [dbo].[customer_contact_history] ([id], [user_id], [customer_type], [email], [full_name], [gender], [mobile], [total_purchases], [total_spend], [updated_at]) VALUES (7, 7, N'vip', N'XiaoDing@gmail.com', N'Nguy?n Thi D', N'male', N'0866046543', 2, CAST(2348000.00 AS Decimal(10, 2)), CAST(N'2025-03-29T17:48:29.0766667' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[customer_contact_history] OFF
GO
SET IDENTITY_INSERT [dbo].[tokenPassword] ON 
GO
INSERT [dbo].[tokenPassword] ([id], [token], [expiryTime], [isUsed], [UserID]) VALUES (2, N'dfe99b7b-3adc-4263-b819-ebca71ff6b2a', CAST(N'2025-02-09T17:41:58.857' AS DateTime), 1, 1)
GO
SET IDENTITY_INSERT [dbo].[tokenPassword] OFF
GO
SET IDENTITY_INSERT [dbo].[user_addresses] ON 
GO
INSERT [dbo].[user_addresses] ([id], [user_id], [recipient_name], [phone], [address], [is_default]) VALUES (1, 4, N'Nguy?n V?n A', N'0866046581', N'thôn 1, Xã Ng?c H?i, Huy?n Thanh Trì, Thành ph? Hà N?i', 1)
GO
INSERT [dbo].[user_addresses] ([id], [user_id], [recipient_name], [phone], [address], [is_default]) VALUES (2, 4, N'Nguy?n Thi B', N'0866046585', N'thôn 4, Ph??ng Duy?t Trung, Thành ph? Cao B?ng, T?nh Cao B?ng', 0)
GO
INSERT [dbo].[user_addresses] ([id], [user_id], [recipient_name], [phone], [address], [is_default]) VALUES (3, 4, N'Nguy?n V?n C', N'0961004959', N'thôn 5, Xã Mông Ân, Huy?n B?o Lâm, T?nh Cao B?ng', 0)
GO
INSERT [dbo].[user_addresses] ([id], [user_id], [recipient_name], [phone], [address], [is_default]) VALUES (4, 6, N'Nguyen Hanh Nhan', N'0866046598', N'thôn 6, Xã Mông Ân, Huy?n B?o Lâm, T?nh Cao B?ng', 1)
GO
INSERT [dbo].[user_addresses] ([id], [user_id], [recipient_name], [phone], [address], [is_default]) VALUES (5, 8, N'Nguyen Van Anh', N'0866046585', N'thôn 4, Ph??ng Tr?n Phú, Thành ph? Hà Giang, T?nh Hà Giang', 1)
GO
INSERT [dbo].[user_addresses] ([id], [user_id], [recipient_name], [phone], [address], [is_default]) VALUES (6, 12, N'Nguyen Hong Hanh', N'0961004935', N'thôn 5, Xã Qu?ng Khê, Huy?n Ba B?, T?nh B?c K?n', 1)
GO
INSERT [dbo].[user_addresses] ([id], [user_id], [recipient_name], [phone], [address], [is_default]) VALUES (7, 7, N'Nguy?n Thi D', N'0866046543', N'thôn 3, Ph??ng Ng?c Hà, Thành ph? Hà Giang, T?nh Hà Giang', 1)
GO
SET IDENTITY_INSERT [dbo].[user_addresses] OFF
GO
SET IDENTITY_INSERT [dbo].[messages] ON 
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (0, 4, 3, N'tôi c?n t? v?n', NULL, 1, CAST(N'2025-03-29T18:05:43.8466667' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (1, 3, 4, N'Shop có th? h? tr? gì cho b?n', NULL, 0, CAST(N'2025-03-29T18:05:57.8233333' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (2, 7, 3, N'xin chào', NULL, 1, CAST(N'2025-03-29T18:06:16.3066667' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (3, 3, 7, N'chào b?n, b?n c?n t? v?n gì ?!', NULL, 0, CAST(N'2025-03-29T18:06:38.2633333' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (4, 6, 3, N'hi', NULL, 1, CAST(N'2025-03-29T18:06:52.4466667' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (5, 3, 6, N'Xin chào quý khách!', NULL, 0, CAST(N'2025-03-29T18:07:19.9533333' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (6, 12, 3, N'c?m ?n vì ?ã giao hàng k?p cho tôi', NULL, 1, CAST(N'2025-03-29T18:07:42.1200000' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (7, 3, 12, N'r?t vui vì ???c ph?c v? q', NULL, 0, CAST(N'2025-03-29T18:07:50.7433333' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (8, 4, 3, N'shop có m?u này không', N'/fashionshop/uploads/message/d2cf9e16-8606-464d-8084-05847c22c9e5.jpg', 1, CAST(N'2025-03-29T18:08:21.5300000' AS DateTime2))
GO
INSERT [dbo].[messages] ([id], [sender_id], [receiver_id], [content], [image_url], [is_read], [created_at]) VALUES (9, 3, 4, N'shop có m?u qu?n tây kaki ?', N'/fashionshop/uploads/message/e9f600d9-a0ac-45b8-b851-0d360414883a.webp', 0, CAST(N'2025-03-29T18:09:24.5300000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[messages] OFF
GO
SET IDENTITY_INSERT [dbo].[order_history] ON 
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (1, 1, 4, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T16:43:48.4400000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (2, 2, 4, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T16:44:30.2666667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (3, 2, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T16:44:35.6300000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (4, 2, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T16:44:48.7100000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (5, 3, 4, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T16:45:14.6033333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (6, 3, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T16:45:23.3066667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (7, 4, 4, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T16:46:10.4000000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (8, 4, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T16:46:17.1200000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (9, 4, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T16:46:52.0533333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (10, 4, 5, N'completed', N'C?p nh?t tr?ng thái thành completed', CAST(N'2025-03-29T16:46:57.8166667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (11, 5, 4, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T16:47:26.2700000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (12, 5, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T16:47:33.2766667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (13, 5, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T16:47:42.3300000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (14, 5, 5, N'returned', N'C?p nh?t tr?ng thái thành returned', CAST(N'2025-03-29T16:47:58.3800000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (15, 6, 4, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T16:48:45.9633333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (16, 6, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T16:48:55.4100000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (17, 6, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T16:49:09.7800000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (18, 6, 5, N'completed', N'C?p nh?t tr?ng thái thành completed', CAST(N'2025-03-29T16:49:21.6833333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (19, 7, 4, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T16:50:40.9633333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (20, 7, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T16:50:54.2633333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (21, 7, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T16:51:06.3933333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (22, 7, 5, N'completed', N'C?p nh?t tr?ng thái thành completed', CAST(N'2025-03-29T16:51:17.9600000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (23, 8, 4, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T16:53:10.3966667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (24, 8, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T16:53:19.3566667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (25, 8, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T16:53:30.2933333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (26, 8, 5, N'completed', N'C?p nh?t tr?ng thái thành completed', CAST(N'2025-03-29T16:53:57.3466667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (27, 9, 6, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T16:55:41.7633333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (28, 9, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T16:55:50.0966667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (29, 9, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T16:56:03.0400000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (30, 9, 5, N'completed', N'C?p nh?t tr?ng thái thành completed', CAST(N'2025-03-29T16:56:07.8433333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (31, 10, 6, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T17:00:11.3066667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (32, 10, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T17:00:49.4700000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (33, 10, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T17:01:05.3133333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (34, 10, 5, N'completed', N'C?p nh?t tr?ng thái thành completed', CAST(N'2025-03-29T17:01:10.2266667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (35, 11, 6, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T17:01:41.6500000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (36, 12, 6, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T17:02:02.8800000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (37, 12, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T17:02:13.7933333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (38, 13, 8, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T17:03:45.7166667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (39, 13, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T17:03:50.0400000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (40, 13, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T17:04:04.3433333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (41, 13, 5, N'completed', N'C?p nh?t tr?ng thái thành completed', CAST(N'2025-03-29T17:04:09.4966667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (42, 14, 8, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T17:04:40.2566667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (43, 14, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T17:04:45.1566667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (44, 14, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T17:04:59.4300000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (45, 15, 8, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T17:05:48.0266667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (46, 15, 5, N'cancelled', N'C?p nh?t tr?ng thái thành cancelled', CAST(N'2025-03-29T17:06:00.9900000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (47, 16, 8, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T17:06:30.3133333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (48, 16, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T17:06:36.5400000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (49, 16, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T17:06:46.6666667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (50, 16, 5, N'returned', N'C?p nh?t tr?ng thái thành returned', CAST(N'2025-03-29T17:06:52.3766667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (51, 17, 12, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T17:08:06.7833333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (52, 17, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T17:08:12.1266667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (53, 17, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T17:08:34.5966667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (54, 17, 5, N'completed', N'C?p nh?t tr?ng thái thành completed', CAST(N'2025-03-29T17:08:40.9600000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (55, 18, 12, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T17:10:13.9733333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (56, 18, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T17:10:24.3600000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (57, 18, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T17:10:35.4966667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (58, 18, 5, N'completed', N'C?p nh?t tr?ng thái thành completed', CAST(N'2025-03-29T17:10:40.6600000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (59, 19, 12, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T17:11:04.2933333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (60, 19, 5, N'cancelled', N'C?p nh?t tr?ng thái thành cancelled', CAST(N'2025-03-29T17:11:08.6933333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (61, 20, 7, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T17:44:38.0933333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (62, 20, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T17:45:21.7400000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (63, 20, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T17:45:34.0266667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (64, 20, 5, N'completed', N'C?p nh?t tr?ng thái thành completed', CAST(N'2025-03-29T17:45:39.6200000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (65, 21, 7, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T17:48:01.3533333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (66, 21, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T17:48:08.7433333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (67, 21, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T17:48:20.0433333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (68, 21, 5, N'completed', N'C?p nh?t tr?ng thái thành completed', CAST(N'2025-03-29T17:48:29.0633333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (69, 22, 6, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T17:52:29.4133333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (70, 22, 5, N'processing', N'C?p nh?t tr?ng thái thành processing', CAST(N'2025-03-29T17:52:35.2766667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (71, 22, 5, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T17:52:44.9300000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (72, 22, 5, N'completed', N'C?p nh?t tr?ng thái thành completed', CAST(N'2025-03-29T17:52:50.5066667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (73, 23, 4, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T20:03:29.4500000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (74, 23, 1, N'pending_pay', N'?ang ch? thanh toán', CAST(N'2025-03-29T20:03:29.4733333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (75, 23, 4, N'pending_pay', NULL, CAST(N'2025-03-29T20:03:29.4766667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (76, 24, 4, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T20:04:49.0066667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (77, 24, 1, N'pending_pay', N'?ã thanh toán thành công', CAST(N'2025-03-29T20:04:49.0233333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (78, 24, 4, N'processing', NULL, CAST(N'2025-03-29T20:04:49.0233333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (79, 25, 4, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T20:06:00.3500000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (80, 25, 1, N'pending_pay', N'?ã thanh toán thành công', CAST(N'2025-03-29T20:06:00.3633333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (81, 25, 4, N'processing', NULL, CAST(N'2025-03-29T20:06:00.3633333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (82, 25, 1, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T20:06:22.0566667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (83, 25, 1, N'completed', N'C?p nh?t tr?ng thái thành completed', CAST(N'2025-03-29T20:06:27.8533333' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (84, 26, 4, N'pending', N'??n hàng m?i ???c t?o', CAST(N'2025-03-29T20:07:59.0366667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (85, 26, 1, N'pending_pay', N'?ã thanh toán thành công', CAST(N'2025-03-29T20:07:59.0500000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (86, 26, 4, N'processing', NULL, CAST(N'2025-03-29T20:07:59.0500000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (87, 26, 1, N'shipping', N'C?p nh?t tr?ng thái thành shipping', CAST(N'2025-03-29T20:08:20.0000000' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (88, 26, 1, N'returned', N'C?p nh?t tr?ng thái thành returned', CAST(N'2025-03-29T20:08:25.3466667' AS DateTime2))
GO
INSERT [dbo].[order_history] ([id], [order_id], [updated_by], [status], [notes], [updated_at]) VALUES (89, 23, 1, N'pending_pay', N'?ang ch? thanh toán', CAST(N'2025-03-29T20:16:52.6333333' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[order_history] OFF
GO
SET IDENTITY_INSERT [dbo].[payments] ON 
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (1, 1, N'cod', N'pending', NULL, CAST(N'2025-03-29T16:43:48.4300000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (2, 2, N'cod', N'pending', NULL, CAST(N'2025-03-29T16:44:30.2633333' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (3, 3, N'cod', N'pending', NULL, CAST(N'2025-03-29T16:45:14.6000000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (4, 4, N'cod', N'completed', NULL, CAST(N'2025-03-29T16:46:57.8200000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (5, 5, N'cod', N'refunded', NULL, CAST(N'2025-03-29T16:47:58.3800000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (6, 6, N'cod', N'completed', NULL, CAST(N'2025-03-29T16:49:21.6833333' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (7, 7, N'cod', N'completed', NULL, CAST(N'2025-03-29T16:51:17.9600000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (8, 8, N'cod', N'completed', NULL, CAST(N'2025-03-29T16:53:57.3500000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (9, 9, N'cod', N'completed', NULL, CAST(N'2025-03-29T16:56:07.8433333' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (10, 10, N'cod', N'completed', NULL, CAST(N'2025-03-29T17:01:10.2300000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (11, 11, N'cod', N'pending', NULL, CAST(N'2025-03-29T17:01:41.6500000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (12, 12, N'cod', N'pending', NULL, CAST(N'2025-03-29T17:02:02.8800000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (13, 13, N'cod', N'completed', NULL, CAST(N'2025-03-29T17:04:09.4966667' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (14, 14, N'cod', N'pending', NULL, CAST(N'2025-03-29T17:04:40.2500000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (15, 15, N'cod', N'pending', NULL, CAST(N'2025-03-29T17:05:48.0233333' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (16, 16, N'cod', N'refunded', NULL, CAST(N'2025-03-29T17:06:52.3766667' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (17, 17, N'cod', N'completed', NULL, CAST(N'2025-03-29T17:08:40.9600000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (18, 18, N'cod', N'completed', NULL, CAST(N'2025-03-29T17:10:40.6600000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (19, 19, N'cod', N'pending', NULL, CAST(N'2025-03-29T17:11:04.2900000' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (20, 20, N'cod', N'completed', NULL, CAST(N'2025-03-29T17:45:39.6233333' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (21, 21, N'cod', N'completed', NULL, CAST(N'2025-03-29T17:48:29.0666667' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (22, 22, N'cod', N'completed', NULL, CAST(N'2025-03-29T17:52:50.5066667' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (23, 23, N'bank_transfer', N'pending', NULL, CAST(N'2025-03-29T20:03:29.4366667' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (24, 24, N'bank_transfer', N'completed', NULL, CAST(N'2025-03-29T20:04:49.0066667' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (25, 25, N'bank_transfer', N'completed', NULL, CAST(N'2025-03-29T20:06:27.8533333' AS DateTime2))
GO
INSERT [dbo].[payments] ([id], [order_id], [payment_method], [payment_status], [transaction_id], [created_at]) VALUES (26, 26, N'bank_transfer', N'refunded', NULL, CAST(N'2025-03-29T20:08:25.3500000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[payments] OFF
GO
SET IDENTITY_INSERT [dbo].[shipping] ON 
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (1, 1, N'Standard Delivery', N'TEMP-1-1743241428436', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (2, 2, N'J&T Express', N'ExpSUP1234', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (3, 3, N'Standard Delivery', N'TEMP-3-1743241514603', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (4, 4, N'J&T Express', N'ExpSUP1243', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (5, 5, N'J&T Express', N'ExpSUP5823', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (6, 6, N'J&T Express', N'ExpSUP5443', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (7, 7, N'J&T Express', N'ExpSUP5334', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (8, 8, N'J&T Express', N'ExpSUP7765', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (9, 9, N'J&T Express', N'ExpSUP1786', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (10, 10, N'J&T Express', N'ExpSUP5765', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (11, 11, N'Standard Delivery', N'TEMP-11-1743242501651', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (12, 12, N'Standard Delivery', N'TEMP-12-1743242522883', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (13, 13, N'J&T Express', N'ExpSUP5086', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (14, 14, N'J&T Express', N'ExpSUP1654', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (15, 15, N'Express Delivery', N'TEMP-15-1743242748027', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (16, 16, N'J&T Express', N'ExpSUP5555', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (17, 17, N'J&T Express', N'ExpSUP5355', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (18, 18, N'J&T Express', N'ExpSUP3563', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (19, 19, N'Standard Delivery', N'TEMP-19-1743243064292', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (20, 20, N'J&T Express', N'ExpSUP5344', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (21, 21, N'J&T Express', N'ExpSUP3456', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (22, 22, N'J&T Express', N'ExpSUP5435', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (23, 23, N'Standard Delivery', N'TEMP-23-1743253409442', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (24, 24, N'Express Delivery', N'TEMP-24-1743253489007', CAST(N'2025-03-31' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (25, 25, N'VNExpress', N'VNE1532289965255', CAST(N'2025-04-03' AS Date), NULL)
GO
INSERT [dbo].[shipping] ([id], [order_id], [shipping_provider], [tracking_number], [estimated_delivery], [delivered_at]) VALUES (26, 26, N'VNExpress', N'VNE153228996524', CAST(N'2025-04-03' AS Date), NULL)
GO
SET IDENTITY_INSERT [dbo].[shipping] OFF
GO

SET IDENTITY_INSERT [dbo].[feedback_images] ON 
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (1, 1, N'uploads/feedbackImages/070ce861-9c8a-4478-8fb6-df993dee99ab_de69784b858a7264233a5e6033892006.jpg', CAST(N'2025-03-29T17:22:11.5400000' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (2, 2, N'uploads/feedbackImages/ed390b42-fc2b-449e-8136-38ada3a16fdf_t?i xu?ng (1).jpg', CAST(N'2025-03-29T17:22:11.5466667' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (3, 2, N'uploads/feedbackImages/eb6d60d9-e9c0-436c-9c9b-884341745188_t?i xu?ng.jpg', CAST(N'2025-03-29T17:22:11.5500000' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (4, 3, N'uploads/feedbackImages/0b0b1228-ef80-4ae5-bac3-3304d198fd2a_6c290dbf7934111c4a28b3a34853a34d.jpg', CAST(N'2025-03-29T17:22:11.5533333' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (5, 4, N'uploads/feedbackImages/83b34c1c-830f-43a9-9cbf-0c29e652917a_t?i xu?ng (2).jpg', CAST(N'2025-03-29T17:22:11.5600000' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (6, 5, N'uploads/feedbackImages/2261b7a7-9384-4b7a-bde7-a02119d427f0_t?i xu?ng (3).jpg', CAST(N'2025-03-29T17:22:11.5633333' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (7, 5, N'uploads/feedbackImages/34b5ef7f-77a2-423c-81d2-cdaa2290a143_t?i xu?ng (4).jpg', CAST(N'2025-03-29T17:22:11.5666667' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (8, 6, N'uploads/feedbackImages/3c0ea5ae-f270-498a-9d1f-f40811b3c20f_t?i xu?ng (5).jpg', CAST(N'2025-03-29T17:23:29.9733333' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (9, 9, N'uploads/feedbackImages/97183adf-ecd9-40a5-b94c-39feb5227dae_t?i xu?ng (6).jpg', CAST(N'2025-03-29T17:26:23.8600000' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (10, 9, N'uploads/feedbackImages/2761dff5-388e-4314-af82-cb8624f3696b_t?i xu?ng (7).jpg', CAST(N'2025-03-29T17:26:23.8633333' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (11, 10, N'uploads/feedbackImages/397ab628-aa76-4200-8e06-d4848067a053_hma00117_85eaac1325cf492ca3953a7f1efed089_master.webp', CAST(N'2025-03-29T17:28:21.6133333' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (12, 11, N'uploads/feedbackImages/62cc50bf-a1a1-46b2-929d-0c5775c3e00c_t?i xu?ng (8).jpg', CAST(N'2025-03-29T17:28:21.6166667' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (13, 11, N'uploads/feedbackImages/a41331fe-4e67-4f31-949b-26fe0bb88b87_t?i xu?ng (9).jpg', CAST(N'2025-03-29T17:28:21.6200000' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (14, 14, N'uploads/feedbackImages/3b289aa8-bf10-4fac-8533-a4e2765251be_t?i xu?ng (10).jpg', CAST(N'2025-03-29T17:51:07.8100000' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (15, 16, N'uploads/feedbackImages/690995c2-dc59-4117-80e1-5025a9fcb10e_t?i xu?ng (11).jpg', CAST(N'2025-03-29T17:51:07.8166667' AS DateTime2))
GO
INSERT [dbo].[feedback_images] ([id], [feedback_id], [image_url], [created_at]) VALUES (16, 16, N'uploads/feedbackImages/3c7742c3-b361-44d7-81f4-6bcb61df6025_t?i xu?ng (12).jpg', CAST(N'2025-03-29T17:51:07.8200000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[feedback_images] OFF
GO