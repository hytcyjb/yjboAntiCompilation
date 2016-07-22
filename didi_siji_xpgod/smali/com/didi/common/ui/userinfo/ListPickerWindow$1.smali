.class Lcom/didi/common/ui/userinfo/ListPickerWindow$1;
.super Ljava/lang/Object;
.source "ListPickerWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/userinfo/ListPickerWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/userinfo/ListPickerWindow;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/userinfo/ListPickerWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    .local p0, this:Lcom/didi/common/ui/userinfo/ListPickerWindow$1;,"Lcom/didi/common/ui/userinfo/ListPickerWindow.1;"
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow$1;->this$0:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 94
    .local p0, this:Lcom/didi/common/ui/userinfo/ListPickerWindow$1;,"Lcom/didi/common/ui/userinfo/ListPickerWindow.1;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 97
    :pswitch_0
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    const v3, 0x7f05000b

    invoke-virtual {v2, v3}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 98
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow$1;->this$0:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    #getter for: Lcom/didi/common/ui/userinfo/ListPickerWindow;->mPickerListener:Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/ListPickerWindow;->access$000(Lcom/didi/common/ui/userinfo/ListPickerWindow;)Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow$1;->this$0:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    #getter for: Lcom/didi/common/ui/userinfo/ListPickerWindow;->mSexWheel:Lcom/example/wheel/WheelView;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/ListPickerWindow;->access$100(Lcom/didi/common/ui/userinfo/ListPickerWindow;)Lcom/example/wheel/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/example/wheel/WheelView;->getCurrentItemIndex()I

    move-result v0

    .line 100
    .local v0, index:I
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow$1;->this$0:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    #getter for: Lcom/didi/common/ui/userinfo/ListPickerWindow;->mWheelAdapter:Lcom/example/wheel/adapter/CommonWheelAdapter;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/ListPickerWindow;->access$200(Lcom/didi/common/ui/userinfo/ListPickerWindow;)Lcom/example/wheel/adapter/CommonWheelAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/example/wheel/adapter/CommonWheelAdapter;->getDataAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v1, object:Ljava/lang/Object;,"TT;"
    if-eqz v1, :cond_0

    .line 102
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow$1;->this$0:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    #getter for: Lcom/didi/common/ui/userinfo/ListPickerWindow;->mPickerListener:Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener;
    invoke-static {v2}, Lcom/didi/common/ui/userinfo/ListPickerWindow;->access$000(Lcom/didi/common/ui/userinfo/ListPickerWindow;)Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow$1;->this$0:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    #getter for: Lcom/didi/common/ui/userinfo/ListPickerWindow;->mWheelAdapter:Lcom/example/wheel/adapter/CommonWheelAdapter;
    invoke-static {v3}, Lcom/didi/common/ui/userinfo/ListPickerWindow;->access$200(Lcom/didi/common/ui/userinfo/ListPickerWindow;)Lcom/example/wheel/adapter/CommonWheelAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/example/wheel/adapter/CommonWheelAdapter;->getDataAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener;->onItemSelected(ILjava/lang/Object;)V

    .line 104
    .end local v0           #index:I
    .end local v1           #object:Ljava/lang/Object;,"TT;"
    :cond_0
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow$1;->this$0:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    invoke-virtual {v2}, Lcom/didi/common/ui/userinfo/ListPickerWindow;->dismiss()V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/ListPickerWindow$1;->this$0:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    invoke-virtual {v2}, Lcom/didi/common/ui/userinfo/ListPickerWindow;->dismiss()V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x7f08010c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
