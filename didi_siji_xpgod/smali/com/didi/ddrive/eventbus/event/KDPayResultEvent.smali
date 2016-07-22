.class public Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
.super Ljava/lang/Object;
.source "KDPayResultEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/eventbus/event/KDPayResultEvent$Action;
    }
.end annotation


# instance fields
.field public action:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent$Action;

.field public icon:Lcom/didi/common/ui/component/CommonDialog$IconType;

.field public msg:Ljava/lang/String;

.field public state:Lcom/didi/ddrive/model/OrderState;

.field public success:Z

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method
