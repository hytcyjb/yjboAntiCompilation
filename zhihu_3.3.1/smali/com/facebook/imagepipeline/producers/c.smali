.class public abstract Lcom/facebook/imagepipeline/producers/c;
.super Ljava/lang/Object;
.source "BaseNetworkFetcher.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/ad;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FETCH_STATE:",
        "Lcom/facebook/imagepipeline/producers/r;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/ad",
        "<TFETCH_STATE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/r;I)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFETCH_STATE;I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/producers/r;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFETCH_STATE;)Z"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/facebook/imagepipeline/producers/r;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFETCH_STATE;I)V"
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method
