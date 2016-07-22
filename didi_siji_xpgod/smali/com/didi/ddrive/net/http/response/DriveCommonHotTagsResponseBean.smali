.class public Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean;
.super Lcom/didi/ddrive/net/http/ResponseBean;
.source "DriveCommonHotTagsResponseBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTag;,
        Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTagBean;
    }
.end annotation


# instance fields
.field private result:Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTagBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/didi/ddrive/net/http/ResponseBean;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public getResult()Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTagBean;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean;->result:Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTagBean;

    return-object v0
.end method

.method public setResult(Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTagBean;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean;->result:Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTagBean;

    .line 16
    return-void
.end method
