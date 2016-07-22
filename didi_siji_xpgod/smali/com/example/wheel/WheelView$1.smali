.class Lcom/example/wheel/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/wheel/WheelView;->scrollToRightPositionDelayed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/example/wheel/WheelView;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/example/wheel/WheelView$1;->this$0:Lcom/example/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/example/wheel/WheelView$1;->this$0:Lcom/example/wheel/WheelView;

    #calls: Lcom/example/wheel/WheelView;->scrollToRightPosition()V
    invoke-static {v0}, Lcom/example/wheel/WheelView;->access$000(Lcom/example/wheel/WheelView;)V

    .line 256
    return-void
.end method
