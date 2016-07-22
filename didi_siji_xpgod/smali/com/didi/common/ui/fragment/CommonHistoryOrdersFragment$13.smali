.class Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;
.super Ljava/lang/Object;
.source "CommonHistoryOrdersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1148
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    .line 1149
    .local v1, state:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;
    const/4 v0, 0x0

    .line 1151
    .local v0, nextFlag:Z
    sget-object v2, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$23;->$SwitchMap$com$didi$common$ui$fragment$CommonHistoryOrdersFragment$FuncState:[I

    invoke-virtual {v1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1176
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1177
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;->toNextState(Landroid/view/View;)V

    .line 1179
    :cond_1
    :goto_1
    return-void

    .line 1153
    :pswitch_0
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->isEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1154
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->changeEditMode(Z)Z

    move-result v0

    goto :goto_0

    .line 1158
    :pswitch_1
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1159
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->changeEditMode(Z)Z

    move-result v0

    goto :goto_0

    .line 1164
    :pswitch_2
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    new-instance v3, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13$1;

    invoke-direct {v3, p0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13$1;-><init>(Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;)V

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->doHistoryOrderItemsDelete(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toNextState(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 1183
    move-object v1, p1

    check-cast v1, Landroid/widget/Button;

    .line 1184
    .local v1, funcView:Landroid/widget/Button;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    .line 1185
    .local v0, curState:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;
    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->next()Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;

    move-result-object v2

    .line 1187
    .local v2, newState:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;
    sget-object v3, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$23;->$SwitchMap$com$didi$common$ui$fragment$CommonHistoryOrdersFragment$FuncState:[I

    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$FuncState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1201
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1202
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1203
    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-virtual {v3, v5}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->clearSelectedItemsId(Z)V

    .line 1204
    return-void

    .line 1190
    :pswitch_0
    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment$13;->this$0:Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-virtual {v3, v5}, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;->changeEditMode(Z)Z

    .line 1191
    const v3, 0x7f0b031b

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 1195
    :pswitch_1
    const v3, 0x7f0b0180

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 1187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
