.class public Lcom/didi/ddrive/eventbus/event/AcceptedDriverCountEvent;
.super Ljava/lang/Object;
.source "AcceptedDriverCountEvent.java"


# instance fields
.field public num:I

.field public toast:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "num"
    .parameter "toast"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/didi/ddrive/eventbus/event/AcceptedDriverCountEvent;->num:I

    .line 13
    iput-object p2, p0, Lcom/didi/ddrive/eventbus/event/AcceptedDriverCountEvent;->toast:Ljava/lang/String;

    .line 14
    return-void
.end method
