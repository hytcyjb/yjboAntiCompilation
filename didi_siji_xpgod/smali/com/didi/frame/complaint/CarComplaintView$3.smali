.class Lcom/didi/frame/complaint/CarComplaintView$3;
.super Ljava/lang/Object;
.source "CarComplaintView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/complaint/CarComplaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/complaint/CarComplaintView;


# direct methods
.method constructor <init>(Lcom/didi/frame/complaint/CarComplaintView;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/didi/frame/complaint/CarComplaintView$3;->this$0:Lcom/didi/frame/complaint/CarComplaintView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/didi/frame/complaint/CarComplaintView$3;->this$0:Lcom/didi/frame/complaint/CarComplaintView;

    #getter for: Lcom/didi/frame/complaint/CarComplaintView;->compListener:Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;
    invoke-static {v0}, Lcom/didi/frame/complaint/CarComplaintView;->access$200(Lcom/didi/frame/complaint/CarComplaintView;)Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/complaint/CarComplaintView$ComplaintListener;->onConfirm()V

    .line 172
    return-void
.end method
