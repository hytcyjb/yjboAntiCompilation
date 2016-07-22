.class public Lcom/didi/beatles/model/event/BtsWeixinGetCodeEvent;
.super Ljava/lang/Object;
.source "BtsWeixinGetCodeEvent.java"


# instance fields
.field public code:Ljava/lang/String;

.field public result:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .parameter "r"
    .parameter "c"

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-boolean p1, p0, Lcom/didi/beatles/model/event/BtsWeixinGetCodeEvent;->result:Z

    .line 6
    iput-object p2, p0, Lcom/didi/beatles/model/event/BtsWeixinGetCodeEvent;->code:Ljava/lang/String;

    .line 7
    return-void
.end method
