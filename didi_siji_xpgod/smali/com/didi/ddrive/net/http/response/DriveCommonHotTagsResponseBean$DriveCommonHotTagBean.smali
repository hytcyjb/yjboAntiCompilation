.class public Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTagBean;
.super Ljava/lang/Object;
.source "DriveCommonHotTagsResponseBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DriveCommonHotTagBean"
.end annotation


# instance fields
.field private remarks:[Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemarks()[Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTag;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTagBean;->remarks:[Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTag;

    return-object v0
.end method

.method public setRemarks([Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTag;)V
    .locals 0
    .parameter "remarks"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTagBean;->remarks:[Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponseBean$DriveCommonHotTag;

    .line 28
    return-void
.end method
