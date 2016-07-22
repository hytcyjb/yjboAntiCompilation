.class public abstract Lcom/didi/game/plugin/service/PluginProxy;
.super Ljava/lang/Object;
.source "PluginProxy.java"


# static fields
.field private static final JAR_NAME:Ljava/lang/String; = ".jar"

.field private static final SO_NAME:Ljava/lang/String; = ".so"


# instance fields
.field protected callback:Lcom/didi/game/plugin/service/IConfigLoadCallback;

.field protected context:Landroid/content/Context;

.field private gameRoot:Ljava/lang/String;

.field protected isLoadNewZIP:Z

.field private jarFile:Ljava/lang/String;

.field protected pluginName:Ljava/lang/String;

.field private soFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "ctxt"
    .parameter "pName"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/didi/game/plugin/service/PluginProxy;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/didi/game/plugin/service/PluginProxy;->pluginName:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lcom/didi/game/plugin/service/PluginProxy;->markGameRoot()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/didi/game/plugin/service/PluginProxy;Ljava/io/File;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/didi/game/plugin/service/PluginProxy;->execUNZip(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/game/plugin/service/PluginProxy;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxy;->jarFile:Ljava/lang/String;

    return-object v0
.end method

.method private close(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "in"
    .parameter "out"

    .prologue
    .line 261
    :try_start_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 262
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteDir(Ljava/io/File;)Z
    .locals 5
    .parameter "dir"

    .prologue
    .line 67
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, children:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 70
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/didi/game/plugin/service/PluginProxy;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 71
    .local v2, success:Z
    if-nez v2, :cond_0

    .line 72
    const/4 v3, 0x0

    .line 77
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #success:Z
    :goto_1
    return v3

    .line 69
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #success:Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #success:Z
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method

.method private execUNZip(Ljava/io/File;)V
    .locals 6
    .parameter "zip"

    .prologue
    .line 145
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 146
    .local v4, zf:Ljava/util/zip/ZipFile;
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 147
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 150
    .local v2, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 154
    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 155
    .local v3, in:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/didi/game/plugin/service/PluginProxy;->save(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #zf:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 165
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 158
    .restart local v1       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .restart local v4       #zf:Ljava/util/zip/ZipFile;
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, p0, Lcom/didi/game/plugin/service/PluginProxy;->isLoadNewZIP:Z

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getlocalZIPPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 273
    const-string v0, ""

    .line 276
    .local v0, zipPath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/didi/game/plugin/service/PluginProxy;->getZIPUrl()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, zipUrl:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/didi/game/plugin/service/PluginProxy;->gameRoot:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 282
    .end local v1           #zipUrl:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 280
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private markGameRoot()V
    .locals 4

    .prologue
    .line 51
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/didi/game/plugin/service/PluginProxy;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/game/plugin/service/PluginProxy;->pluginName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .local v1, fold:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/game/plugin/service/PluginProxy;->gameRoot:Ljava/lang/String;

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 64
    .end local v1           #fold:Ljava/io/File;
    :goto_0
    return-void

    .line 59
    .restart local v1       #fold:Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Lcom/didi/game/plugin/service/PluginProxy;->existsPlugin()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v1           #fold:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private save(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .parameter "in"
    .parameter "fileName"

    .prologue
    .line 175
    const/4 v3, 0x0

    .line 178
    .local v3, out:Ljava/io/OutputStream;
    :try_start_0
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 179
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/didi/game/plugin/service/PluginProxy;->gameRoot:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v5, target:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    .end local v3           #out:Ljava/io/OutputStream;
    .local v4, out:Ljava/io/OutputStream;
    const/high16 v6, 0x10

    :try_start_1
    new-array v0, v6, [B

    .line 182
    .local v0, buffer:[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 183
    .local v2, len:I
    :goto_0
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 184
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 185
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 188
    :cond_0
    const-string v6, ".jar"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 189
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/game/plugin/service/PluginProxy;->jarFile:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 199
    :cond_1
    :goto_1
    invoke-direct {p0, p1, v4}, Lcom/didi/game/plugin/service/PluginProxy;->close(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object v3, v4

    .line 201
    .end local v0           #buffer:[B
    .end local v2           #len:I
    .end local v4           #out:Ljava/io/OutputStream;
    .end local v5           #target:Ljava/io/File;
    .restart local v3       #out:Ljava/io/OutputStream;
    :goto_2
    return-void

    .line 190
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #len:I
    .restart local v4       #out:Ljava/io/OutputStream;
    .restart local v5       #target:Ljava/io/File;
    :cond_2
    :try_start_2
    const-string v6, ".so"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 191
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/game/plugin/service/PluginProxy;->soFile:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 194
    .end local v0           #buffer:[B
    .end local v2           #len:I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 195
    .end local v4           #out:Ljava/io/OutputStream;
    .end local v5           #target:Ljava/io/File;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #out:Ljava/io/OutputStream;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    invoke-direct {p0, p1, v3}, Lcom/didi/game/plugin/service/PluginProxy;->close(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_2

    .line 196
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 197
    .local v1, e:Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 199
    invoke-direct {p0, p1, v3}, Lcom/didi/game/plugin/service/PluginProxy;->close(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_5
    invoke-direct {p0, p1, v3}, Lcom/didi/game/plugin/service/PluginProxy;->close(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    throw v6

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    .restart local v5       #target:Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_5

    .line 196
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    goto :goto_4

    .line 194
    .end local v5           #target:Ljava/io/File;
    :catch_3
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public existsPlugin()Z
    .locals 10

    .prologue
    .line 212
    const/4 v5, 0x0

    .local v5, jar:Z
    const/4 v7, 0x0

    .line 213
    .local v7, so:Z
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/didi/game/plugin/service/PluginProxy;->gameRoot:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v3, fold:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 216
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 217
    .local v2, files:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v0, v4

    .line 218
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".jar"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 219
    const/4 v5, 0x1

    .line 220
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/game/plugin/service/PluginProxy;->jarFile:Ljava/lang/String;

    .line 217
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".so"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 222
    const/4 v7, 0x1

    .line 223
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/game/plugin/service/PluginProxy;->soFile:Ljava/lang/String;

    goto :goto_1

    .line 227
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_2
    if-eqz v5, :cond_3

    if-eqz v7, :cond_3

    const/4 v8, 0x1

    :goto_2
    return v8

    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public getJarFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxy;->jarFile:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginRoot()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/game/plugin/service/PluginProxy;->gameRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/didi/game/plugin/service/PluginProxy;->soFile:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getZIPUrl()Ljava/lang/String;
.end method

.method public isDownloadNewZIP()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/didi/game/plugin/service/PluginProxy;->isLoadNewZIP:Z

    return v0
.end method

.method public load(Lcom/didi/game/plugin/service/IPluginLoadCallback;)V
    .locals 0
    .parameter "loadCallback"

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/didi/game/plugin/service/PluginProxy;->loadZip(Lcom/didi/game/plugin/service/IPluginLoadCallback;)V

    .line 289
    return-void
.end method

.method public loadConf(Lcom/didi/game/plugin/service/IConfigLoadCallback;)V
    .locals 0
    .parameter "loadCallback"

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/didi/game/plugin/service/PluginProxy;->loadConfig(Lcom/didi/game/plugin/service/IConfigLoadCallback;)V

    .line 296
    return-void
.end method

.method protected loadConfig(Lcom/didi/game/plugin/service/IConfigLoadCallback;)V
    .locals 1
    .parameter "cback"

    .prologue
    .line 86
    new-instance v0, Lcom/didi/game/plugin/service/PluginProxy$1;

    invoke-direct {v0, p0, p1}, Lcom/didi/game/plugin/service/PluginProxy$1;-><init>(Lcom/didi/game/plugin/service/PluginProxy;Lcom/didi/game/plugin/service/IConfigLoadCallback;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getCommonBizPlugConfig(Lcom/didi/common/net/ResponseListener;)V

    .line 105
    return-void
.end method

.method protected loadZip(Lcom/didi/game/plugin/service/IPluginLoadCallback;)V
    .locals 4
    .parameter "loadCallback"

    .prologue
    .line 114
    invoke-static {}, Lnet/tsz/afinal/FinalHttp;->getInstance()Lnet/tsz/afinal/FinalHttp;

    move-result-object v0

    .line 115
    .local v0, fh:Lnet/tsz/afinal/FinalHttp;
    invoke-virtual {p0}, Lcom/didi/game/plugin/service/PluginProxy;->getZIPUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/didi/game/plugin/service/PluginProxy;->getlocalZIPPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/didi/game/plugin/service/PluginProxy$2;

    invoke-direct {v3, p0, p1}, Lcom/didi/game/plugin/service/PluginProxy$2;-><init>(Lcom/didi/game/plugin/service/PluginProxy;Lcom/didi/game/plugin/service/IPluginLoadCallback;)V

    invoke-virtual {v0, v1, v2, v3}, Lnet/tsz/afinal/FinalHttp;->download(Ljava/lang/String;Ljava/lang/String;Lnet/tsz/afinal/http/AjaxCallBack;)Lnet/tsz/afinal/http/HttpHandler;

    .line 134
    return-void
.end method

.method protected abstract transferConf(Lcom/didi/common/model/CommonBizPlugConfig;)V
.end method

.method protected abstract writePreferences()V
.end method
