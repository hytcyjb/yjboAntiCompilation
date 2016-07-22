.class Lcom/didi/flier/ui/fragment/FlierBookingFragment$ToastListener;
.super Ljava/lang/Object;
.source "FlierBookingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierBookingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToastListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$ToastListener;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierBookingFragment$ToastListener;->this$0:Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    #calls: Lcom/didi/flier/ui/fragment/FlierBookingFragment;->showSelectCityToast()V
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierBookingFragment;->access$1200(Lcom/didi/flier/ui/fragment/FlierBookingFragment;)V

    .line 743
    return-void
.end method
