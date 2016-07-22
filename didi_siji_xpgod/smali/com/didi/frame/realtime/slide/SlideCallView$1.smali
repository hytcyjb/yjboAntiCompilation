.class Lcom/didi/frame/realtime/slide/SlideCallView$1;
.super Ljava/lang/Object;
.source "SlideCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/realtime/slide/SlideCallView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/realtime/slide/SlideCallView;


# direct methods
.method constructor <init>(Lcom/didi/frame/realtime/slide/SlideCallView;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/didi/frame/realtime/slide/SlideCallView$1;->this$0:Lcom/didi/frame/realtime/slide/SlideCallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/frame/realtime/slide/SlideCallView$1;->this$0:Lcom/didi/frame/realtime/slide/SlideCallView;

    #calls: Lcom/didi/frame/realtime/slide/SlideCallView;->homeSelect()V
    invoke-static {v0}, Lcom/didi/frame/realtime/slide/SlideCallView;->access$000(Lcom/didi/frame/realtime/slide/SlideCallView;)V

    .line 73
    return-void
.end method
