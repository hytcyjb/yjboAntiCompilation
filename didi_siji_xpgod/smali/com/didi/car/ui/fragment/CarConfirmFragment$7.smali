.class Lcom/didi/car/ui/fragment/CarConfirmFragment$7;
.super Ljava/lang/Object;
.source "CarConfirmFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarConfirmFragment;->setTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->back()V
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$800(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    .line 405
    return-void
.end method
