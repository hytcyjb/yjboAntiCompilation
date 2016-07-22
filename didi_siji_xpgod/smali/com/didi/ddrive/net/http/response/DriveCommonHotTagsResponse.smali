.class public Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponse;
.super Ljava/lang/Object;
.source "DriveCommonHotTagsResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponse$DriveCommonHotTag;
    }
.end annotation


# instance fields
.field private tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponse$DriveCommonHotTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponse$DriveCommonHotTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponse;->tags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setTags(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponse$DriveCommonHotTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponse$DriveCommonHotTag;>;"
    iput-object p1, p0, Lcom/didi/ddrive/net/http/response/DriveCommonHotTagsResponse;->tags:Ljava/util/ArrayList;

    .line 18
    return-void
.end method
