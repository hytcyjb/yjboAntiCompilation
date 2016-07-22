.class public Lcom/didi/ddrive/net/http/request/ContactDriverRequest;
.super Ljava/lang/Object;
.source "ContactDriverRequest.java"


# annotations
.annotation runtime Lcom/didi/ddrive/net/http/annotations/KDDriveHttpAnnotation;
    api = "lj.o.p.contact"
    apiVersion = "1.0.0"
.end annotation


# instance fields
.field public lat:D

.field public lng:D

.field public oid:J

.field public pid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
