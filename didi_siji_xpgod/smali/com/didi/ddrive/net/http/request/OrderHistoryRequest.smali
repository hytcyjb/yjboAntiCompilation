.class public Lcom/didi/ddrive/net/http/request/OrderHistoryRequest;
.super Ljava/lang/Object;
.source "OrderHistoryRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.o.p.history"
    apiVersion = "1.0.0"
.end annotation


# static fields
.field public static final NUM:I = 0x3c


# instance fields
.field public num:I

.field public oid:J

.field public pid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
