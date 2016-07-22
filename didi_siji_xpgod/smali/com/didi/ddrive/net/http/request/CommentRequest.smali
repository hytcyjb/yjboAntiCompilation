.class public Lcom/didi/ddrive/net/http/request/CommentRequest;
.super Ljava/lang/Object;
.source "CommentRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.o.p.comment"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public context:Ljava/lang/String;

.field public lat:D

.field public lng:D

.field public oid:J

.field public pid:J

.field public star:I

.field public tagId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
