.class public Lcom/didi/beatles/utils/BtsHttpFileUtils;
.super Ljava/lang/Object;
.source "BtsHttpFileUtils.java"


# static fields
.field public static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/beatles/utils/BtsHttpFileUtils;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActionLocation()Z
    .locals 5

    .prologue
    .line 66
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getChangeIPFlag()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, flag:Ljava/lang/String;
    sget-object v1, Lcom/didi/beatles/utils/BtsHttpFileUtils;->map:Ljava/util/Map;

    .line 68
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 69
    .local v2, result:Z
    if-eqz v0, :cond_0

    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    if-eqz v1, :cond_0

    .line 71
    const-string v4, "type"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    .local v3, type:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    const/4 v2, 0x1

    .line 77
    .end local v3           #type:Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public static read(Ljava/lang/String;)V
    .locals 19
    .parameter "path"

    .prologue
    .line 16
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    const/4 v8, 0x0

    .line 21
    .local v8, fis:Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 22
    .local v2, br:Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 24
    .local v11, isr:Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 25
    .end local v8           #fis:Ljava/io/FileInputStream;
    .local v9, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 26
    .end local v11           #isr:Ljava/io/InputStreamReader;
    .local v12, isr:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 27
    .end local v2           #br:Ljava/io/BufferedReader;
    .local v3, br:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v13, sb:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 29
    .local v4, content:Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 30
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 43
    .end local v4           #content:Ljava/lang/String;
    .end local v13           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    move-object v11, v12

    .end local v12           #isr:Ljava/io/InputStreamReader;
    .restart local v11       #isr:Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    move-object v8, v9

    .line 44
    .end local v9           #fis:Ljava/io/FileInputStream;
    .local v6, e:Ljava/io/IOException;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 49
    const/4 v2, 0x0

    .line 51
    :cond_2
    if-eqz v11, :cond_3

    .line 52
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    .line 53
    const/4 v11, 0x0

    .line 55
    :cond_3
    if-eqz v8, :cond_0

    .line 56
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 57
    const/4 v8, 0x0

    goto :goto_0

    .line 32
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v11           #isr:Ljava/io/InputStreamReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v4       #content:Ljava/lang/String;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v12       #isr:Ljava/io/InputStreamReader;
    .restart local v13       #sb:Ljava/lang/StringBuilder;
    :cond_4
    :try_start_6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, data:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    array-length v15, v5

    if-ge v10, v15, :cond_9

    .line 34
    aget-object v15, v5, v10

    const-string v16, "!--!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 35
    .local v14, values:[Ljava/lang/String;
    sget-object v16, Lcom/didi/beatles/utils/BtsHttpFileUtils;->map:Ljava/util/Map;

    monitor-enter v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 36
    if-eqz v14, :cond_5

    :try_start_7
    array-length v15, v14

    const/16 v17, 0x2

    move/from16 v0, v17

    if-lt v15, v0, :cond_5

    .line 37
    sget-object v15, Lcom/didi/beatles/utils/BtsHttpFileUtils;->map:Ljava/util/Map;

    const/16 v17, 0x0

    aget-object v17, v14, v17

    const/16 v18, 0x1

    aget-object v18, v14, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_4
    monitor-exit v16

    .line 33
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 39
    :cond_5
    sget-object v15, Lcom/didi/beatles/utils/BtsHttpFileUtils;->map:Ljava/util/Map;

    const/16 v17, 0x0

    aget-object v17, v14, v17

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 41
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 46
    .end local v4           #content:Ljava/lang/String;
    .end local v5           #data:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v13           #sb:Ljava/lang/StringBuilder;
    .end local v14           #values:[Ljava/lang/String;
    :catchall_1
    move-exception v15

    move-object v11, v12

    .end local v12           #isr:Ljava/io/InputStreamReader;
    .restart local v11       #isr:Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    move-object v8, v9

    .line 47
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :goto_5
    if-eqz v2, :cond_6

    .line 48
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 49
    const/4 v2, 0x0

    .line 51
    :cond_6
    if-eqz v11, :cond_7

    .line 52
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    .line 53
    const/4 v11, 0x0

    .line 55
    :cond_7
    if-eqz v8, :cond_8

    .line 56
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 57
    const/4 v8, 0x0

    .line 61
    :cond_8
    :goto_6
    throw v15

    .line 47
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v11           #isr:Ljava/io/InputStreamReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v4       #content:Ljava/lang/String;
    .restart local v5       #data:[Ljava/lang/String;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v10       #i:I
    .restart local v12       #isr:Ljava/io/InputStreamReader;
    .restart local v13       #sb:Ljava/lang/StringBuilder;
    :cond_9
    if-eqz v3, :cond_c

    .line 48
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 49
    const/4 v2, 0x0

    .line 51
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :goto_7
    if-eqz v12, :cond_b

    .line 52
    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 53
    const/4 v11, 0x0

    .line 55
    .end local v12           #isr:Ljava/io/InputStreamReader;
    .restart local v11       #isr:Ljava/io/InputStreamReader;
    :goto_8
    if-eqz v9, :cond_a

    .line 56
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 57
    const/4 v8, 0x0

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 59
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v11           #isr:Ljava/io/InputStreamReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v12       #isr:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v6

    move-object v11, v12

    .end local v12           #isr:Ljava/io/InputStreamReader;
    .restart local v11       #isr:Ljava/io/InputStreamReader;
    move-object v2, v3

    .line 60
    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v6       #e:Ljava/io/IOException;
    :goto_9
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .line 62
    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 59
    .end local v4           #content:Ljava/lang/String;
    .end local v5           #data:[Ljava/lang/String;
    .end local v10           #i:I
    .end local v13           #sb:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v6

    .line 60
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 59
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 60
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 46
    .end local v6           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v15

    goto :goto_5

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v15

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v11           #isr:Ljava/io/InputStreamReader;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v12       #isr:Ljava/io/InputStreamReader;
    :catchall_4
    move-exception v15

    move-object v11, v12

    .end local v12           #isr:Ljava/io/InputStreamReader;
    .restart local v11       #isr:Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 43
    :catch_4
    move-exception v6

    goto/16 :goto_2

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v11           #isr:Ljava/io/InputStreamReader;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v12       #isr:Ljava/io/InputStreamReader;
    :catch_6
    move-exception v6

    move-object v11, v12

    .end local v12           #isr:Ljava/io/InputStreamReader;
    .restart local v11       #isr:Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 59
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v11           #isr:Ljava/io/InputStreamReader;
    .restart local v4       #content:Ljava/lang/String;
    .restart local v5       #data:[Ljava/lang/String;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v10       #i:I
    .restart local v12       #isr:Ljava/io/InputStreamReader;
    .restart local v13       #sb:Ljava/lang/StringBuilder;
    :catch_7
    move-exception v6

    move-object v11, v12

    .end local v12           #isr:Ljava/io/InputStreamReader;
    .restart local v11       #isr:Ljava/io/InputStreamReader;
    goto :goto_9

    :catch_8
    move-exception v6

    goto :goto_9

    :cond_a
    move-object v8, v9

    .end local v9           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_0

    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v11           #isr:Ljava/io/InputStreamReader;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v12       #isr:Ljava/io/InputStreamReader;
    :cond_b
    move-object v11, v12

    .end local v12           #isr:Ljava/io/InputStreamReader;
    .restart local v11       #isr:Ljava/io/InputStreamReader;
    goto :goto_8

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v11           #isr:Ljava/io/InputStreamReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v12       #isr:Ljava/io/InputStreamReader;
    :cond_c
    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_7
.end method
