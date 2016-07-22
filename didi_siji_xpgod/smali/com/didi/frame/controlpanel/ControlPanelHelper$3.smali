.class final Lcom/didi/frame/controlpanel/ControlPanelHelper$3;
.super Ljava/lang/Object;
.source "ControlPanelHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 190
    const v0, 0x7f0b0579

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->setConfirmText(I)V

    .line 191
    return-void
.end method
