.class Lcom/didi/im/component/CommonMessagePopupHelper$1;
.super Ljava/lang/Object;
.source "CommonMessagePopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/component/CommonMessagePopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/im/component/CommonMessagePopupHelper;


# direct methods
.method constructor <init>(Lcom/didi/im/component/CommonMessagePopupHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/didi/im/component/CommonMessagePopupHelper$1;->this$0:Lcom/didi/im/component/CommonMessagePopupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/didi/im/component/CommonMessagePopupHelper$1;->this$0:Lcom/didi/im/component/CommonMessagePopupHelper;

    #getter for: Lcom/didi/im/component/CommonMessagePopupHelper;->listView:Lcom/didi/im/component/CornerListView;
    invoke-static {v1}, Lcom/didi/im/component/CommonMessagePopupHelper;->access$000(Lcom/didi/im/component/CommonMessagePopupHelper;)Lcom/didi/im/component/CornerListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/im/component/CommonMessagePopupHelper$1;->this$0:Lcom/didi/im/component/CommonMessagePopupHelper;

    #getter for: Lcom/didi/im/component/CommonMessagePopupHelper;->msgs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/didi/im/component/CommonMessagePopupHelper;->access$100(Lcom/didi/im/component/CommonMessagePopupHelper;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/im/component/CommonMessagePopupHelper$1;->this$0:Lcom/didi/im/component/CommonMessagePopupHelper;

    #getter for: Lcom/didi/im/component/CommonMessagePopupHelper;->msgs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/didi/im/component/CommonMessagePopupHelper;->access$100(Lcom/didi/im/component/CommonMessagePopupHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/didi/im/component/CommonMessagePopupHelper$1;->this$0:Lcom/didi/im/component/CommonMessagePopupHelper;

    #getter for: Lcom/didi/im/component/CommonMessagePopupHelper;->msgs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/didi/im/component/CommonMessagePopupHelper;->access$100(Lcom/didi/im/component/CommonMessagePopupHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/didi/im/component/CommonMessagePopupHelper$1;->this$0:Lcom/didi/im/component/CommonMessagePopupHelper;

    #getter for: Lcom/didi/im/component/CommonMessagePopupHelper;->msgs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/didi/im/component/CommonMessagePopupHelper;->access$100(Lcom/didi/im/component/CommonMessagePopupHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/im/component/CommonMessagePopupHelper$1;->this$0:Lcom/didi/im/component/CommonMessagePopupHelper;

    #getter for: Lcom/didi/im/component/CommonMessagePopupHelper;->popupType:I
    invoke-static {v1}, Lcom/didi/im/component/CommonMessagePopupHelper;->access$200(Lcom/didi/im/component/CommonMessagePopupHelper;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 126
    .end local v0           #message:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/didi/im/component/CommonMessagePopupHelper$1;->this$0:Lcom/didi/im/component/CommonMessagePopupHelper;

    invoke-virtual {v1}, Lcom/didi/im/component/CommonMessagePopupHelper;->disMissPopupWindow()V

    goto :goto_0

    .line 117
    .restart local v0       #message:Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/didi/im/component/CommonMessagePopupHelper$1;->this$0:Lcom/didi/im/component/CommonMessagePopupHelper;

    #getter for: Lcom/didi/im/component/CommonMessagePopupHelper;->listener:Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;
    invoke-static {v1}, Lcom/didi/im/component/CommonMessagePopupHelper;->access$300(Lcom/didi/im/component/CommonMessagePopupHelper;)Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;->onCommonSendCommonMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :pswitch_1
    iget-object v1, p0, Lcom/didi/im/component/CommonMessagePopupHelper$1;->this$0:Lcom/didi/im/component/CommonMessagePopupHelper;

    #getter for: Lcom/didi/im/component/CommonMessagePopupHelper;->listener:Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;
    invoke-static {v1}, Lcom/didi/im/component/CommonMessagePopupHelper;->access$300(Lcom/didi/im/component/CommonMessagePopupHelper;)Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/im/component/CommonMessagePopupHelper$1;->this$0:Lcom/didi/im/component/CommonMessagePopupHelper;

    #getter for: Lcom/didi/im/component/CommonMessagePopupHelper;->chatRecord:Lcom/didi/im/model/IMChatRecord;
    invoke-static {v2}, Lcom/didi/im/component/CommonMessagePopupHelper;->access$400(Lcom/didi/im/component/CommonMessagePopupHelper;)Lcom/didi/im/model/IMChatRecord;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/didi/im/component/CommonMessagePopupHelper$CommmonMessageSendListener;->onCommonResendMessage(Lcom/didi/im/model/IMChatRecord;)V

    goto :goto_1

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
