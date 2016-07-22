.class public abstract Lcom/facebook/soloader/h;
.super Lcom/facebook/soloader/b;
.source "UnpackingSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/h$e;,
        Lcom/facebook/soloader/h$d;,
        Lcom/facebook/soloader/h$c;,
        Lcom/facebook/soloader/h$b;,
        Lcom/facebook/soloader/h$a;
    }
.end annotation


# instance fields
.field protected final e:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p1, p2}, Lcom/facebook/soloader/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/soloader/b;-><init>(Ljava/io/File;I)V

    .line 41
    iput-object p1, p0, Lcom/facebook/soloader/h;->e:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 45
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(BLcom/facebook/soloader/h$b;Lcom/facebook/soloader/h$d;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    const-string v0, "fb-UnpackingSoSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regenerating DSO store "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    const-string v2, "dso_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v5, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 209
    const/4 v0, 0x0

    .line 210
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 212
    :try_start_0
    invoke-static {v5}, Lcom/facebook/soloader/h$b;->a(Ljava/io/DataInput;)Lcom/facebook/soloader/h$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 218
    :cond_0
    :goto_0
    if-nez v0, :cond_d

    .line 219
    :try_start_1
    new-instance v0, Lcom/facebook/soloader/h$b;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/facebook/soloader/h$a;

    invoke-direct {v0, v1}, Lcom/facebook/soloader/h$b;-><init>([Lcom/facebook/soloader/h$a;)V

    move-object v4, v0

    .line 222
    :goto_1
    iget-object v0, p2, Lcom/facebook/soloader/h$b;->a:[Lcom/facebook/soloader/h$a;

    invoke-direct {p0, v0}, Lcom/facebook/soloader/h;->a([Lcom/facebook/soloader/h$a;)V

    .line 223
    const v0, 0x8000

    new-array v6, v0, [B

    .line 224
    :cond_1
    :goto_2
    invoke-virtual {p3}, Lcom/facebook/soloader/h$d;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 225
    invoke-virtual {p3}, Lcom/facebook/soloader/h$d;->b()Lcom/facebook/soloader/h$c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    const/4 v1, 0x0

    .line 226
    const/4 v3, 0x1

    .line 227
    const/4 v0, 0x0

    move v10, v0

    move v0, v3

    move v3, v10

    :goto_3
    if-eqz v0, :cond_4

    :try_start_2
    iget-object v8, v4, Lcom/facebook/soloader/h$b;->a:[Lcom/facebook/soloader/h$a;

    array-length v8, v8

    if-ge v3, v8, :cond_4

    .line 228
    iget-object v8, v4, Lcom/facebook/soloader/h$b;->a:[Lcom/facebook/soloader/h$a;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/facebook/soloader/h$a;->c:Ljava/lang/String;

    iget-object v9, v7, Lcom/facebook/soloader/h$c;->a:Lcom/facebook/soloader/h$a;

    iget-object v9, v9, Lcom/facebook/soloader/h$a;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v4, Lcom/facebook/soloader/h$b;->a:[Lcom/facebook/soloader/h$a;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/facebook/soloader/h$a;->d:Ljava/lang/String;

    iget-object v9, v7, Lcom/facebook/soloader/h$c;->a:Lcom/facebook/soloader/h$a;

    iget-object v9, v9, Lcom/facebook/soloader/h$a;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result v8

    if-eqz v8, :cond_2

    .line 230
    const/4 v0, 0x0

    .line 227
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 213
    :catch_0
    move-exception v1

    .line 214
    :try_start_3
    const-string v3, "fb-UnpackingSoSource"

    const-string v4, "error reading existing DSO manifest"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 208
    :catch_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 238
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_4
    if-eqz v5, :cond_3

    if-eqz v1, :cond_c

    :try_start_5
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    :cond_3
    :goto_5
    throw v0

    .line 233
    :cond_4
    if-eqz v0, :cond_5

    .line 234
    :try_start_6
    invoke-direct {p0, v7, v6}, Lcom/facebook/soloader/h;->a(Lcom/facebook/soloader/h$c;[B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 236
    :cond_5
    if-eqz v7, :cond_1

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v7}, Lcom/facebook/soloader/h$c;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 238
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 236
    :cond_6
    invoke-virtual {v7}, Lcom/facebook/soloader/h$c;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 225
    :catch_3
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 236
    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_6
    if-eqz v7, :cond_7

    if-eqz v1, :cond_8

    :try_start_a
    invoke-virtual {v7}, Lcom/facebook/soloader/h$c;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    :cond_7
    :goto_7
    :try_start_b
    throw v0

    :catch_4
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_8
    invoke-virtual {v7}, Lcom/facebook/soloader/h$c;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_7

    .line 238
    :cond_9
    if-eqz v5, :cond_a

    if-eqz v2, :cond_b

    :try_start_c
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 239
    :cond_a
    :goto_8
    return-void

    .line 238
    :catch_5
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_b
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_8

    :catch_6
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_c
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_5

    .line 236
    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_d
    move-object v4, v0

    goto/16 :goto_1
.end method

.method private a(Lcom/facebook/soloader/h$c;[B)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 175
    const-string v0, "fb-UnpackingSoSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extracting DSO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/facebook/soloader/h$c;->a:Lcom/facebook/soloader/h$a;

    iget-object v2, v2, Lcom/facebook/soloader/h$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    iget-object v1, p1, Lcom/facebook/soloader/h$c;->a:Lcom/facebook/soloader/h$a;

    iget-object v1, v1, Lcom/facebook/soloader/h$a;->c:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 187
    :goto_0
    :try_start_1
    iget-object v0, p1, Lcom/facebook/soloader/h$c;->b:Ljava/io/InputStream;

    .line 188
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 189
    if-le v0, v5, :cond_0

    .line 190
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/facebook/soloader/g;->a(Ljava/io/FileDescriptor;J)V

    .line 192
    :cond_0
    iget-object v0, p1, Lcom/facebook/soloader/h$c;->b:Ljava/io/InputStream;

    const v3, 0x7fffffff

    invoke-static {v1, v0, v3, p2}, Lcom/facebook/soloader/g;->a(Ljava/io/RandomAccessFile;Ljava/io/InputStream;I[B)I

    .line 193
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 194
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot make file executable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v1, "fb-UnpackingSoSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error overwriting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " trying to delete and start over"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 183
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 200
    return-void
.end method

.method static synthetic a(Ljava/io/File;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/facebook/soloader/h;->b(Ljava/io/File;B)V

    return-void
.end method

.method private a([Lcom/facebook/soloader/h$a;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 146
    if-nez v4, :cond_0

    .line 147
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to list directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 150
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_5

    .line 151
    aget-object v5, v4, v0

    .line 152
    const-string v2, "dso_state"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "dso_lock"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "dso_deps"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "dso_manifest"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    move v2, v1

    .line 160
    :goto_2
    if-nez v2, :cond_4

    array-length v6, p1

    if-ge v3, v6, :cond_4

    .line 161
    aget-object v6, p1, v3

    iget-object v6, v6, Lcom/facebook/soloader/h$a;->c:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 162
    const/4 v2, 0x1

    .line 160
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 166
    :cond_4
    if-nez v2, :cond_1

    .line 167
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    const-string v3, "fb-UnpackingSoSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleting unaccounted-for file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {v2}, Lcom/facebook/soloader/g;->a(Ljava/io/File;)V

    goto :goto_1

    .line 172
    :cond_5
    return-void
.end method

.method private a(Lcom/facebook/soloader/e;I[B)Z
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    const-string v1, "dso_state"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v2, v5, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 249
    :try_start_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 250
    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 251
    const-string v0, "fb-UnpackingSoSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dso store "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " regeneration interrupted: wiping clean"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 252
    const/4 v0, 0x0

    .line 257
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_7

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    :cond_1
    :goto_1
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    const-string v3, "dso_deps"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 260
    const/4 v4, 0x0

    .line 261
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v7, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 262
    :try_start_2
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v1, v8

    new-array v1, v1, [B

    .line 263
    invoke-virtual {v7, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    array-length v8, v1

    if-eq v3, v8, :cond_2

    .line 264
    const-string v0, "fb-UnpackingSoSource"

    const-string v3, "short read of so store deps file: marking unclean"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v0, 0x0

    .line 268
    :cond_2
    invoke-static {v1, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    .line 269
    const-string v0, "fb-UnpackingSoSource"

    const-string v1, "deps mismatch on deps store: regenerating"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v0, 0x0

    .line 273
    :cond_3
    if-nez v0, :cond_5

    .line 274
    const-string v1, "fb-UnpackingSoSource"

    const-string v3, "so store dirty: regenerating"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v1, 0x0

    invoke-static {v5, v1}, Lcom/facebook/soloader/h;->b(Ljava/io/File;B)V

    .line 277
    invoke-virtual {p0}, Lcom/facebook/soloader/h;->a()Lcom/facebook/soloader/h$e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v8

    const/4 v3, 0x0

    .line 278
    :try_start_3
    invoke-virtual {v8}, Lcom/facebook/soloader/h$e;->a()Lcom/facebook/soloader/h$b;

    move-result-object v4

    .line 279
    invoke-virtual {v8}, Lcom/facebook/soloader/h$e;->b()Lcom/facebook/soloader/h$d;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v9

    const/4 v1, 0x0

    .line 280
    :try_start_4
    invoke-direct {p0, v0, v4, v9}, Lcom/facebook/soloader/h;->a(BLcom/facebook/soloader/h$b;Lcom/facebook/soloader/h$d;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    .line 281
    if-eqz v9, :cond_4

    if-eqz v1, :cond_c

    :try_start_5
    invoke-virtual {v9}, Lcom/facebook/soloader/h$d;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 282
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    if-eqz v3, :cond_f

    :try_start_6
    invoke-virtual {v8}, Lcom/facebook/soloader/h$e;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9

    .line 284
    :cond_5
    :goto_3
    if-eqz v7, :cond_6

    if-eqz v6, :cond_11

    :try_start_7
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b

    .line 286
    :cond_6
    :goto_4
    if-nez v4, :cond_13

    .line 287
    const/4 v0, 0x0

    .line 334
    :goto_5
    return v0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const/4 v0, 0x0

    goto :goto_0

    .line 257
    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    .line 247
    :catch_2
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 257
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_6
    if-eqz v2, :cond_8

    if-eqz v1, :cond_9

    :try_start_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    :cond_8
    :goto_7
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_7

    .line 281
    :catch_4
    move-exception v0

    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_2

    .line 277
    :catch_5
    move-exception v0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 282
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_8
    if-eqz v8, :cond_a

    if-eqz v1, :cond_10

    :try_start_c
    invoke-virtual {v8}, Lcom/facebook/soloader/h$e;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_a

    :cond_a
    :goto_9
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    .line 261
    :catch_6
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 284
    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_a
    if-eqz v7, :cond_b

    if-eqz v1, :cond_12

    :try_start_f
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_c

    :cond_b
    :goto_b
    throw v0

    .line 281
    :cond_c
    :try_start_10
    invoke-virtual {v9}, Lcom/facebook/soloader/h$d;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    goto :goto_2

    .line 282
    :catchall_3
    move-exception v0

    move-object v1, v3

    goto :goto_8

    .line 279
    :catch_7
    move-exception v1

    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 281
    :catchall_4
    move-exception v0

    if-eqz v9, :cond_d

    if-eqz v1, :cond_e

    :try_start_12
    invoke-virtual {v9}, Lcom/facebook/soloader/h$d;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    :cond_d
    :goto_c
    :try_start_13
    throw v0

    :catch_8
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_e
    invoke-virtual {v9}, Lcom/facebook/soloader/h$d;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_5

    goto :goto_c

    .line 282
    :catch_9
    move-exception v0

    :try_start_14
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 284
    :catchall_5
    move-exception v0

    move-object v1, v6

    goto :goto_a

    .line 282
    :cond_f
    invoke-virtual {v8}, Lcom/facebook/soloader/h$e;->close()V

    goto :goto_3

    :catch_a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_10
    invoke-virtual {v8}, Lcom/facebook/soloader/h$e;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_6

    goto :goto_9

    .line 284
    :catch_b
    move-exception v0

    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_11
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_4

    :catch_c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_12
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_b

    .line 292
    :cond_13
    new-instance v0, Lcom/facebook/soloader/h$1;

    move-object v1, p0

    move-object v3, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/soloader/h$1;-><init>(Lcom/facebook/soloader/h;Ljava/io/File;[BLcom/facebook/soloader/h$b;Ljava/io/File;Lcom/facebook/soloader/e;)V

    .line 328
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_14

    .line 329
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoSync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 334
    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 331
    :cond_14
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    .line 257
    :catchall_6
    move-exception v0

    goto/16 :goto_6
.end method

.method private static b(Ljava/io/File;B)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 133
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 134
    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 135
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 136
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 137
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected abstract a()Lcom/facebook/soloader/h$e;
.end method

.method protected a(I)V
    .locals 5
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/soloader/g;->b(Ljava/io/File;)V

    .line 370
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    const-string v2, "dso_lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 371
    invoke-static {v0}, Lcom/facebook/soloader/e;->a(Ljava/io/File;)Lcom/facebook/soloader/e;

    move-result-object v1

    .line 373
    :try_start_0
    const-string v0, "fb-UnpackingSoSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locked dso store "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p0}, Lcom/facebook/soloader/h;->b()[B

    move-result-object v0

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/soloader/h;->a(Lcom/facebook/soloader/e;I[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 380
    :goto_0
    if-eqz v0, :cond_1

    .line 381
    const-string v1, "fb-UnpackingSoSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing dso store lock for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v0}, Lcom/facebook/soloader/e;->close()V

    .line 388
    :goto_1
    return-void

    .line 377
    :cond_0
    :try_start_1
    const-string v0, "fb-UnpackingSoSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dso store is up-to-date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 384
    :cond_1
    const-string v0, "fb-UnpackingSoSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not releasing dso store lock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (syncer thread started)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 380
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 381
    const-string v2, "fb-UnpackingSoSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releasing dso store lock for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v1}, Lcom/facebook/soloader/e;->close()V

    .line 384
    :goto_2
    throw v0

    :cond_2
    const-string v1, "fb-UnpackingSoSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not releasing dso store lock for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/soloader/h;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (syncer thread started)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected b()[B
    .locals 7

    .prologue
    .line 349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 350
    invoke-virtual {p0}, Lcom/facebook/soloader/h;->a()Lcom/facebook/soloader/h$e;

    move-result-object v3

    const/4 v1, 0x0

    .line 351
    :try_start_0
    invoke-virtual {v3}, Lcom/facebook/soloader/h$e;->a()Lcom/facebook/soloader/h$b;

    move-result-object v0

    iget-object v4, v0, Lcom/facebook/soloader/h$b;->a:[Lcom/facebook/soloader/h$a;

    .line 352
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 353
    array-length v0, v4

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v0, 0x0

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 355
    aget-object v5, v4, v0

    iget-object v5, v5, Lcom/facebook/soloader/h$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    aget-object v5, v4, v0

    iget-object v5, v5, Lcom/facebook/soloader/h$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v3}, Lcom/facebook/soloader/h$e;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 359
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 360
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 361
    return-object v0

    .line 358
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/facebook/soloader/h$e;->close()V

    goto :goto_1

    .line 350
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v3, :cond_3

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v3}, Lcom/facebook/soloader/h$e;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/facebook/soloader/h$e;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method
