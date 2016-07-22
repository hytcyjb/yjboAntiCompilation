.class Lcom/didi/frame/DepartureActivity$10;
.super Ljava/lang/Object;
.source "DepartureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/DepartureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/DepartureActivity;


# direct methods
.method constructor <init>(Lcom/didi/frame/DepartureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/didi/frame/DepartureActivity$10;->this$0:Lcom/didi/frame/DepartureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/didi/frame/DepartureActivity$10;->this$0:Lcom/didi/frame/DepartureActivity;

    #calls: Lcom/didi/frame/DepartureActivity;->setCustomAddress()V
    invoke-static {v0}, Lcom/didi/frame/DepartureActivity;->access$1200(Lcom/didi/frame/DepartureActivity;)V

    .line 611
    return-void
.end method
