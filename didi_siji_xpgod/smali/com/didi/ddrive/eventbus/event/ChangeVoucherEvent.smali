.class public Lcom/didi/ddrive/eventbus/event/ChangeVoucherEvent;
.super Ljava/lang/Object;
.source "ChangeVoucherEvent.java"


# instance fields
.field public final result:Lcom/didi/ddrive/net/http/response/ChangeVoucherResult;


# direct methods
.method public constructor <init>(Lcom/didi/ddrive/net/http/response/ChangeVoucherResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/didi/ddrive/eventbus/event/ChangeVoucherEvent;->result:Lcom/didi/ddrive/net/http/response/ChangeVoucherResult;

    .line 14
    return-void
.end method
