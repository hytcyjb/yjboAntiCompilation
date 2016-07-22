.class Lcom/didi/soso/location/view/LocationView$1;
.super Ljava/lang/Object;
.source "LocationView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/soso/location/view/LocationView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/soso/location/view/LocationView;


# direct methods
.method constructor <init>(Lcom/didi/soso/location/view/LocationView;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/didi/soso/location/view/LocationView$1;->this$0:Lcom/didi/soso/location/view/LocationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/didi/soso/location/view/LocationView$1;->this$0:Lcom/didi/soso/location/view/LocationView;

    #getter for: Lcom/didi/soso/location/view/LocationView;->change:Lcom/didi/soso/location/view/LocationView$ChangeListener;
    invoke-static {v0}, Lcom/didi/soso/location/view/LocationView;->access$000(Lcom/didi/soso/location/view/LocationView;)Lcom/didi/soso/location/view/LocationView$ChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/didi/soso/location/view/LocationView$1;->this$0:Lcom/didi/soso/location/view/LocationView;

    #getter for: Lcom/didi/soso/location/view/LocationView;->change:Lcom/didi/soso/location/view/LocationView$ChangeListener;
    invoke-static {v0}, Lcom/didi/soso/location/view/LocationView;->access$000(Lcom/didi/soso/location/view/LocationView;)Lcom/didi/soso/location/view/LocationView$ChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/soso/location/view/LocationView$ChangeListener;->onchange()V

    .line 47
    iget-object v0, p0, Lcom/didi/soso/location/view/LocationView$1;->this$0:Lcom/didi/soso/location/view/LocationView;

    invoke-virtual {v0}, Lcom/didi/soso/location/view/LocationView;->hideView()V

    goto :goto_0
.end method
