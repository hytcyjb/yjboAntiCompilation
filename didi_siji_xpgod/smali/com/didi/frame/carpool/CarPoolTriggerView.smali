.class public Lcom/didi/frame/carpool/CarPoolTriggerView;
.super Lcom/didi/frame/controlpanel/pin/TriggerPinView;
.source "CarPoolTriggerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;
    }
.end annotation


# instance fields
.field private mInterceptLis:Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/carpool/CarPoolTriggerView;)Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/didi/frame/carpool/CarPoolTriggerView;->mInterceptLis:Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;

    return-object v0
.end method


# virtual methods
.method protected onInit()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->onInit()V

    .line 29
    const v0, 0x7f02013f

    invoke-virtual {p0, v0}, Lcom/didi/frame/carpool/CarPoolTriggerView;->setIcon(I)V

    .line 30
    const v0, 0x7f0b047d

    invoke-virtual {p0, v0}, Lcom/didi/frame/carpool/CarPoolTriggerView;->setBelowText(I)V

    .line 32
    new-instance v0, Lcom/didi/frame/carpool/CarPoolTriggerView$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/carpool/CarPoolTriggerView$1;-><init>(Lcom/didi/frame/carpool/CarPoolTriggerView;)V

    invoke-virtual {p0, v0}, Lcom/didi/frame/carpool/CarPoolTriggerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/didi/frame/carpool/CarPoolTriggerView;->setSelected()V

    .line 46
    return-void
.end method

.method public setInterceptListener(Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/didi/frame/carpool/CarPoolTriggerView;->mInterceptLis:Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;

    .line 50
    return-void
.end method
