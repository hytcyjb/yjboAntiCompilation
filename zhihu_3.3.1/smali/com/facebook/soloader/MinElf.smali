.class public final Lcom/facebook/soloader/MinElf;
.super Ljava/lang/Object;
.source "MinElf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/MinElf$ElfError;
    }
.end annotation


# direct methods
.method private static a(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    :goto_0
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/soloader/MinElf;->e(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide p2, v0

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 245
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 247
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    invoke-virtual {p0, p1, p3, p4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    .line 249
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 255
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_2

    .line 256
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v1, "ELF file truncated"

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    int-to-long v0, v0

    add-long/2addr p3, v0

    .line 253
    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 260
    return-void
.end method

.method public static a(Ljava/io/File;)[Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 40
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 42
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/soloader/MinElf;->a(Ljava/nio/channels/FileChannel;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 44
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method

.method public static a(Ljava/nio/channels/FileChannel;)[Ljava/lang/String;
    .locals 22
    .parameter

    .prologue
    .line 62
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 66
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 67
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v2

    const-wide/32 v4, 0x464c457f

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 68
    new-instance v2, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v3, "file is not ELF"

    invoke-direct {v2, v3}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_0
    const-wide/16 v2, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/soloader/MinElf;->e(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    .line 72
    :goto_0
    const-wide/16 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->e(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 73
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 80
    :cond_1
    if-eqz v2, :cond_5

    const-wide/16 v4, 0x1c

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    .line 84
    :goto_1
    if-eqz v2, :cond_6

    const-wide/16 v4, 0x2c

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->d(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I

    move-result v3

    int-to-long v4, v3

    .line 88
    :goto_2
    if-eqz v2, :cond_7

    const-wide/16 v6, 0x2a

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->d(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I

    move-result v3

    move/from16 v19, v3

    .line 92
    :goto_3
    const-wide/32 v6, 0xffff

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 94
    if-eqz v2, :cond_8

    const-wide/16 v4, 0x20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    .line 98
    :goto_4
    if-eqz v2, :cond_9

    const-wide/16 v6, 0x1c

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    .line 105
    :cond_2
    :goto_5
    const-wide/16 v8, 0x0

    .line 108
    const-wide/16 v6, 0x0

    move-wide v12, v6

    move-wide v14, v10

    :goto_6
    cmp-long v3, v12, v4

    if-gez v3, :cond_3

    .line 109
    if-eqz v2, :cond_a

    const-wide/16 v6, 0x0

    add-long/2addr v6, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    .line 113
    :goto_7
    const-wide/16 v16, 0x2

    cmp-long v3, v6, v16

    if-nez v3, :cond_c

    .line 114
    if-eqz v2, :cond_b

    const-wide/16 v6, 0x4

    add-long/2addr v6, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    :goto_8
    move-wide v8, v6

    .line 125
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v3, v8, v6

    if-nez v3, :cond_d

    .line 126
    new-instance v2, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v3, "ELF file does not contain dynamic linking information"

    invoke-direct {v2, v3}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 80
    :cond_5
    const-wide/16 v4, 0x20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    goto/16 :goto_1

    .line 84
    :cond_6
    const-wide/16 v4, 0x38

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->d(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I

    move-result v3

    int-to-long v4, v3

    goto/16 :goto_2

    .line 88
    :cond_7
    const-wide/16 v6, 0x36

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->d(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I

    move-result v3

    move/from16 v19, v3

    goto/16 :goto_3

    .line 94
    :cond_8
    const-wide/16 v4, 0x28

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    goto :goto_4

    .line 98
    :cond_9
    const-wide/16 v6, 0x2c

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    goto :goto_5

    .line 109
    :cond_a
    const-wide/16 v6, 0x0

    add-long/2addr v6, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    goto :goto_7

    .line 114
    :cond_b
    const-wide/16 v6, 0x8

    add-long/2addr v6, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    goto :goto_8

    .line 122
    :cond_c
    move/from16 v0, v19

    int-to-long v6, v0

    add-long/2addr v14, v6

    .line 108
    const-wide/16 v6, 0x1

    add-long/2addr v6, v12

    move-wide v12, v6

    goto/16 :goto_6

    .line 134
    :cond_d
    const/4 v3, 0x0

    .line 136
    const-wide/16 v6, 0x0

    move-wide v14, v8

    .line 139
    :goto_9
    if-eqz v2, :cond_e

    const-wide/16 v12, 0x0

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v12, v13}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v12

    .line 143
    :goto_a
    const-wide/16 v16, 0x1

    cmp-long v16, v12, v16

    if-nez v16, :cond_10

    .line 144
    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v3, v0, :cond_f

    .line 145
    new-instance v2, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v3, "malformed DT_NEEDED section"

    invoke-direct {v2, v3}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_e
    const-wide/16 v12, 0x0

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v12, v13}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v12

    goto :goto_a

    .line 148
    :cond_f
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v16, v6

    move/from16 v18, v3

    .line 155
    :goto_b
    if-eqz v2, :cond_12

    const-wide/16 v6, 0x8

    :goto_c
    add-long/2addr v6, v14

    .line 156
    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-nez v3, :cond_22

    .line 158
    const-wide/16 v6, 0x0

    cmp-long v3, v16, v6

    if-nez v3, :cond_13

    .line 159
    new-instance v2, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v3, "Dynamic section string-table not found"

    invoke-direct {v2, v3}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_10
    const-wide/16 v16, 0x5

    cmp-long v16, v12, v16

    if-nez v16, :cond_23

    .line 150
    if-eqz v2, :cond_11

    const-wide/16 v6, 0x4

    add-long/2addr v6, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    :goto_d
    move-wide/from16 v16, v6

    move/from16 v18, v3

    goto :goto_b

    :cond_11
    const-wide/16 v6, 0x8

    add-long/2addr v6, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6, v7}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v6

    goto :goto_d

    .line 155
    :cond_12
    const-wide/16 v6, 0x10

    goto :goto_c

    .line 164
    :cond_13
    const-wide/16 v6, 0x0

    .line 167
    const/4 v3, 0x0

    move-wide v14, v10

    :goto_e
    int-to-long v10, v3

    cmp-long v10, v10, v4

    if-gez v10, :cond_21

    .line 168
    if-eqz v2, :cond_14

    const-wide/16 v10, 0x0

    add-long/2addr v10, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    .line 172
    :goto_f
    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_18

    .line 173
    if-eqz v2, :cond_15

    const-wide/16 v10, 0x8

    add-long/2addr v10, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    move-wide v12, v10

    .line 177
    :goto_10
    if-eqz v2, :cond_16

    const-wide/16 v10, 0x14

    add-long/2addr v10, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    .line 181
    :goto_11
    cmp-long v21, v12, v16

    if-gtz v21, :cond_18

    add-long/2addr v10, v12

    cmp-long v10, v16, v10

    if-gez v10, :cond_18

    .line 182
    if-eqz v2, :cond_17

    const-wide/16 v4, 0x4

    add-long/2addr v4, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    .line 186
    :goto_12
    sub-long v6, v16, v12

    add-long/2addr v4, v6

    move-wide v10, v4

    .line 194
    :goto_13
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-nez v3, :cond_19

    .line 195
    new-instance v2, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v3, "did not find file offset of DT_STRTAB table"

    invoke-direct {v2, v3}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_14
    const-wide/16 v10, 0x0

    add-long/2addr v10, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    goto :goto_f

    .line 173
    :cond_15
    const-wide/16 v10, 0x10

    add-long/2addr v10, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    move-wide v12, v10

    goto :goto_10

    .line 177
    :cond_16
    const-wide/16 v10, 0x28

    add-long/2addr v10, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    goto :goto_11

    .line 182
    :cond_17
    const-wide/16 v4, 0x8

    add-long/2addr v4, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    goto :goto_12

    .line 191
    :cond_18
    move/from16 v0, v19

    int-to-long v10, v0

    add-long/2addr v10, v14

    .line 167
    add-int/lit8 v3, v3, 0x1

    move-wide v14, v10

    goto/16 :goto_e

    .line 198
    :cond_19
    move/from16 v0, v18

    new-array v12, v0, [Ljava/lang/String;

    .line 200
    const/4 v3, 0x0

    .line 204
    :goto_14
    if-eqz v2, :cond_1a

    const-wide/16 v4, 0x0

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    move-wide v6, v4

    .line 208
    :goto_15
    const-wide/16 v4, 0x1

    cmp-long v4, v6, v4

    if-nez v4, :cond_1d

    .line 209
    if-eqz v2, :cond_1b

    const-wide/16 v4, 0x4

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    .line 213
    :goto_16
    add-long/2addr v4, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->a(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 214
    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1c

    .line 215
    new-instance v2, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v3, "malformed DT_NEEDED section"

    invoke-direct {v2, v3}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_1a
    const-wide/16 v4, 0x0

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_15

    .line 209
    :cond_1b
    const-wide/16 v4, 0x8

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    goto :goto_16

    .line 218
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    .line 221
    :cond_1d
    if-eqz v2, :cond_1e

    const-wide/16 v4, 0x8

    :goto_17
    add-long/2addr v4, v8

    .line 222
    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_20

    .line 224
    array-length v2, v12

    if-eq v3, v2, :cond_1f

    .line 225
    new-instance v2, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v3, "malformed DT_NEEDED section"

    invoke-direct {v2, v3}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :cond_1e
    const-wide/16 v4, 0x10

    goto :goto_17

    .line 228
    :cond_1f
    return-object v12

    :cond_20
    move-wide v8, v4

    goto :goto_14

    :cond_21
    move-wide v10, v6

    goto/16 :goto_13

    :cond_22
    move-wide v14, v6

    move/from16 v3, v18

    move-wide/from16 v6, v16

    goto/16 :goto_9

    :cond_23
    move-wide/from16 v16, v6

    move/from16 v18, v3

    goto/16 :goto_b
.end method

.method private static b(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    const/16 v0, 0x8

    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->a(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 265
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private static c(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    const/4 v0, 0x4

    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->a(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 271
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static d(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 276
    const/4 v0, 0x2

    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->a(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 277
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static e(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->a(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 283
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method
