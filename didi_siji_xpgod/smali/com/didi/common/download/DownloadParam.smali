.class public Lcom/didi/common/download/DownloadParam;
.super Ljava/lang/Object;
.source "DownloadParam.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2e8b3c44cb65df2cL


# instance fields
.field private final mPath:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "url"
    .parameter "path"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/didi/common/download/DownloadParam;->mUrl:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/didi/common/download/DownloadParam;->mPath:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/common/download/DownloadParam;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/didi/common/download/DownloadParam;->mUrl:Ljava/lang/String;

    return-object v0
.end method
