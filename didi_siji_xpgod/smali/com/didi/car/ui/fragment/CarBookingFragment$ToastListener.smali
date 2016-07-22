.class Lcom/didi/car/ui/fragment/CarBookingFragment$ToastListener;
.super Ljava/lang/Object;
.source "CarBookingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarBookingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToastListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarBookingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$ToastListener;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarBookingFragment$ToastListener;->this$0:Lcom/didi/car/ui/fragment/CarBookingFragment;

    #calls: Lcom/didi/car/ui/fragment/CarBookingFragment;->showSelectCityToast()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarBookingFragment;->access$1200(Lcom/didi/car/ui/fragment/CarBookingFragment;)V

    .line 821
    return-void
.end method
