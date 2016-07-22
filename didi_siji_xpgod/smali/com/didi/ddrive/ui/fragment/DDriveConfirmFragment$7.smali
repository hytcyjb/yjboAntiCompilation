.class Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$7;
.super Ljava/lang/Object;
.source "DDriveConfirmFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->back()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$7;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 431
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 432
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->backward()V

    .line 433
    return-void
.end method
