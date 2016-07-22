.class public Lcom/didi/ddrive/net/http/request/CommentTagRequest;
.super Ljava/lang/Object;
.source "CommentTagRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.i.getTags"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public bizType:I

.field public cityId:I

.field public userType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
