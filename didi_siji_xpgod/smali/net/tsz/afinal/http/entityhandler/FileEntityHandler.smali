.class public Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;
.super Ljava/lang/Object;
.source "FileEntityHandler.java"


# instance fields
.field private mStop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    .line 27
    return-void
.end method


# virtual methods
.method public handleEntity(Lorg/apache/http/HttpEntity;Lnet/tsz/afinal/http/entityhandler/EntityCallBack;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 14
    .parameter "entity"
    .parameter "callback"
    .parameter "target"
    .parameter "isResume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 46
    :cond_0
    const/4 v11, 0x0

    .line 92
    :cond_1
    return-object v11

    .line 48
    :cond_2
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v11, targetFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 51
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 54
    :cond_3
    iget-boolean v1, p0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    if-nez v1, :cond_1

    .line 59
    const-wide/16 v4, 0x0

    .line 60
    .local v4, current:J
    const/4 v9, 0x0

    .line 61
    .local v9, os:Ljava/io/FileOutputStream;
    if-eqz p4, :cond_5

    .line 62
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 63
    new-instance v9, Ljava/io/FileOutputStream;

    .end local v9           #os:Ljava/io/FileOutputStream;
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-direct {v9, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 68
    .restart local v9       #os:Ljava/io/FileOutputStream;
    :goto_0
    iget-boolean v1, p0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    if-nez v1, :cond_1

    .line 72
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 73
    .local v8, input:Ljava/io/InputStream;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    add-long v2, v12, v4

    .line 75
    .local v2, count:J
    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    iget-boolean v1, p0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    if-nez v1, :cond_1

    .line 79
    const/4 v10, 0x0

    .line 80
    .local v10, readLen:I
    const/16 v1, 0x400

    new-array v7, v1, [B

    .line 81
    .local v7, buffer:[B
    :goto_1
    iget-boolean v1, p0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    if-nez v1, :cond_4

    cmp-long v1, v4, v2

    if-gez v1, :cond_4

    const/4 v1, 0x0

    const/16 v6, 0x400

    invoke-virtual {v8, v7, v1, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-gtz v10, :cond_6

    .line 86
    :cond_4
    const/4 v6, 0x1

    move-object/from16 v1, p2

    invoke-interface/range {v1 .. v6}, Lnet/tsz/afinal/http/entityhandler/EntityCallBack;->callBack(JJZ)V

    .line 88
    iget-boolean v1, p0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    if-eqz v1, :cond_1

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    .line 89
    new-instance v1, Ljava/io/IOException;

    const-string v6, "user stop download thread"

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    .end local v2           #count:J
    .end local v7           #buffer:[B
    .end local v8           #input:Ljava/io/InputStream;
    .end local v10           #readLen:I
    :cond_5
    new-instance v9, Ljava/io/FileOutputStream;

    .end local v9           #os:Ljava/io/FileOutputStream;
    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .restart local v9       #os:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 82
    .restart local v2       #count:J
    .restart local v7       #buffer:[B
    .restart local v8       #input:Ljava/io/InputStream;
    .restart local v10       #readLen:I
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v9, v7, v1, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 83
    int-to-long v12, v10

    add-long/2addr v4, v12

    .line 84
    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-interface/range {v1 .. v6}, Lnet/tsz/afinal/http/entityhandler/EntityCallBack;->callBack(JJZ)V

    goto :goto_1
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    return v0
.end method

.method public setStop(Z)V
    .locals 0
    .parameter "stop"

    .prologue
    .line 40
    iput-boolean p1, p0, Lnet/tsz/afinal/http/entityhandler/FileEntityHandler;->mStop:Z

    .line 41
    return-void
.end method
