.class public Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTag;
.super Ljava/lang/Object;
.source "DriveCommonHotTagsResponseBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DriveCommonHotTag"
.end annotation


# instance fields
.field private id:J

.field private pos:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTag;->id:J

    return-wide v0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTag;->pos:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTag;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTag;->id:J

    .line 52
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 39
    iput p1, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTag;->pos:I

    .line 40
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTag;->text:Ljava/lang/String;

    .line 46
    return-void
.end method
