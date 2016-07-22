.class public Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponse$DriveCommonHotTag;
.super Ljava/lang/Object;
.source "DriveCommonHotTagsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DriveCommonHotTag"
.end annotation


# instance fields
.field private id:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponse$DriveCommonHotTag;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponse$DriveCommonHotTag;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponse$DriveCommonHotTag;->id:J

    .line 28
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponse$DriveCommonHotTag;->name:Ljava/lang/String;

    .line 34
    return-void
.end method
