.class public Lcom/tencent/tauth/d;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/tencent/tauth/d;->b:Ljava/lang/String;

    .line 31
    iput p1, p0, Lcom/tencent/tauth/d;->a:I

    .line 32
    iput-object p3, p0, Lcom/tencent/tauth/d;->c:Ljava/lang/String;

    .line 33
    return-void
.end method
