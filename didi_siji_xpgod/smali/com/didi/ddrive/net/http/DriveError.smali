.class public Lcom/didi/ddrive/net/http/DriveError;
.super Lcom/android/volley/VolleyError;
.source "DriveError.java"


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 14
    invoke-direct {p0, p2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    .line 15
    iput p1, p0, Lcom/didi/ddrive/net/http/DriveError;->code:I

    .line 16
    iput-object p2, p0, Lcom/didi/ddrive/net/http/DriveError;->msg:Ljava/lang/String;

    .line 17
    return-void
.end method
