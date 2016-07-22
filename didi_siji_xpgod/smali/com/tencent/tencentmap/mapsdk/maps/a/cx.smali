.class public Lcom/tencent/tencentmap/mapsdk/maps/a/cx;
.super Ljava/lang/Object;
.source "LibaryLoaderHelper.java"


# static fields
.field static final synthetic a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const-class v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cx;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/cx;->a:Z

    .line 33
    sput-boolean v1, Lcom/tencent/tencentmap/mapsdk/maps/a/cx;->b:Z

    return-void

    :cond_0
    move v0, v1

    .line 27
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 6
    .parameter "dir"

    .prologue
    .line 327
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 328
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 329
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 336
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to remove "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b()V

    .line 343
    .end local v1           #files:[Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 329
    .restart local v1       #files:[Ljava/io/File;
    :cond_2
    aget-object v0, v1, v2

    .line 330
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to remove "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v0           #file:Ljava/io/File;
    .end local v1           #files:[Ljava/io/File;
    :catch_0
    move-exception v2

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a()V

    goto :goto_1
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .parameter "fileTarget"
    .parameter "methodName"

    .prologue
    .line 223
    if-nez p0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x0

    .line 228
    .local v0, methodInvoke:Ljava/lang/reflect/Method;
    :try_start_0
    const-class v1, Ljava/io/File;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 233
    :goto_1
    if-eqz v0, :cond_0

    .line 237
    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 231
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 241
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 244
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 23
    .parameter "context"

    .prologue
    .line 126
    sget-boolean v14, Lcom/tencent/tencentmap/mapsdk/maps/a/cx;->b:Z

    if-eqz v14, :cond_0

    .line 127
    const/4 v14, 0x0

    .line 190
    :goto_0
    return v14

    .line 129
    :cond_0
    const/4 v14, 0x1

    sput-boolean v14, Lcom/tencent/tencentmap/mapsdk/maps/a/cx;->b:Z

    .line 130
    const-string v14, "lib"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    .line 131
    .local v9, libDir:Ljava/io/File;
    invoke-static {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/cx;->a(Ljava/io/File;)V

    .line 133
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 134
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v7, Ljava/util/zip/ZipFile;

    new-instance v14, Ljava/io/File;

    iget-object v15, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x1

    invoke-direct {v7, v14, v15}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 135
    .local v7, file:Ljava/util/zip/ZipFile;
    sget-object v17, Lcom/tencent/tencentmap/mapsdk/maps/a/cw;->a:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/4 v14, 0x0

    move/from16 v16, v14

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 185
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V

    .line 186
    const/4 v14, 0x1

    goto :goto_0

    .line 135
    :cond_1
    aget-object v10, v17, v16

    .line 136
    .local v10, libName:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "lib/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 137
    .local v6, entry:Ljava/util/zip/ZipEntry;
    :goto_2
    if-nez v6, :cond_3

    .line 138
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V

    .line 139
    invoke-static {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/cx;->a(Ljava/io/File;)V

    .line 140
    const/4 v14, 0x0

    goto :goto_0

    .line 136
    .end local v6           #entry:Ljava/util/zip/ZipEntry;
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "lib/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    goto :goto_2

    .line 142
    .restart local v6       #entry:Ljava/util/zip/ZipEntry;
    :cond_3
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/cx;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 143
    .local v13, outputFile:Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Extracting native libraries into "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 144
    sget-boolean v14, Lcom/tencent/tencentmap/mapsdk/maps/a/cx;->a:Z

    if-nez v14, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v6           #entry:Ljava/util/zip/ZipEntry;
    .end local v7           #file:Ljava/util/zip/ZipFile;
    .end local v10           #libName:Ljava/lang/String;
    .end local v13           #outputFile:Ljava/io/File;
    :catch_0
    move-exception v14

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a()V

    .line 189
    invoke-static {v9}, Lcom/tencent/tencentmap/mapsdk/maps/a/cx;->a(Ljava/io/File;)V

    .line 190
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 146
    .restart local v2       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #entry:Ljava/util/zip/ZipEntry;
    .restart local v7       #file:Ljava/util/zip/ZipFile;
    .restart local v10       #libName:Ljava/lang/String;
    .restart local v13       #outputFile:Ljava/io/File;
    :cond_4
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    move-result v14

    if-nez v14, :cond_6

    .line 147
    new-instance v14, Ljava/io/IOException;

    invoke-direct {v14}, Ljava/io/IOException;-><init>()V

    throw v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :catch_1
    move-exception v5

    .line 176
    .local v5, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 177
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v14

    if-nez v14, :cond_5

    .line 178
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Failed to delete "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->b()V

    .line 181
    :cond_5
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V

    .line 182
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    .end local v5           #e:Ljava/io/IOException;
    :cond_6
    const/4 v8, 0x0

    .line 150
    .local v8, is:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 152
    .local v11, os:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v7, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 153
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 154
    .end local v11           #os:Ljava/io/FileOutputStream;
    .local v12, os:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 155
    .local v4, count:I
    const/16 v14, 0x4000

    :try_start_4
    new-array v3, v14, [B

    .line 156
    .local v3, buffer:[B
    :goto_3
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    if-gtz v4, :cond_9

    .line 161
    if-eqz v8, :cond_7

    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 163
    :cond_7
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 167
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x9

    if-lt v14, v15, :cond_8

    .line 171
    const-string v14, "setReadable"

    invoke-static {v13, v14}, Lcom/tencent/tencentmap/mapsdk/maps/a/cx;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    const-string v14, "setExecutable"

    invoke-static {v13, v14}, Lcom/tencent/tencentmap/mapsdk/maps/a/cx;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    const-string v14, "setWritable"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v13, :cond_8

    const/4 v15, 0x0

    :try_start_7
    const-class v19, Ljava/io/File;

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v22, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v14

    :goto_4
    if-eqz v14, :cond_8

    const/4 v15, 0x1

    :try_start_8
    new-array v15, v15, [Ljava/lang/Object;

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v15, v19

    invoke-virtual {v14, v13, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 135
    :cond_8
    :goto_5
    add-int/lit8 v14, v16, 0x1

    move/from16 v16, v14

    goto/16 :goto_1

    .line 157
    :cond_9
    const/4 v14, 0x0

    :try_start_9
    invoke-virtual {v12, v3, v14, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 159
    .end local v3           #buffer:[B
    :catchall_0
    move-exception v14

    move-object v11, v12

    .line 161
    .end local v4           #count:I
    .end local v12           #os:Ljava/io/FileOutputStream;
    .restart local v11       #os:Ljava/io/FileOutputStream;
    :goto_6
    if-eqz v8, :cond_a

    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 163
    :cond_a
    if-eqz v11, :cond_b

    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 165
    :cond_b
    throw v14

    .line 162
    :catchall_1
    move-exception v14

    .line 163
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 164
    :cond_c
    throw v14

    .line 162
    .end local v11           #os:Ljava/io/FileOutputStream;
    .restart local v3       #buffer:[B
    .restart local v4       #count:I
    .restart local v12       #os:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v14

    .line 163
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 164
    throw v14

    .line 173
    :catch_2
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v14, v15

    goto :goto_4

    :catch_3
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_5

    .line 159
    .end local v3           #buffer:[B
    .end local v4           #count:I
    .end local v12           #os:Ljava/io/FileOutputStream;
    .restart local v11       #os:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v14

    goto :goto_6
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "library"

    .prologue
    const/4 v2, 0x0

    .line 87
    sget-boolean v3, Lcom/tencent/tencentmap/mapsdk/maps/a/cx;->a:Z

    if-nez v3, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 88
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/cx;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 89
    .local v1, libFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 90
    .local v0, isFileExists:Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "libary:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is exist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ah;->a(Ljava/lang/String;)V

    .line 91
    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/cx;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    :goto_0
    return v2

    .line 95
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v2, 0x1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "context"
    .parameter "library"

    .prologue
    .line 112
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, libName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "lib"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
