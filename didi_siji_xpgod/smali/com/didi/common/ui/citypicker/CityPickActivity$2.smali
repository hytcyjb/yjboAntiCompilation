.class Lcom/didi/common/ui/citypicker/CityPickActivity$2;
.super Ljava/lang/Object;
.source "CityPickActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/citypicker/CityPickActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/citypicker/CityPickActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$2;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$2;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->clearBtn:Lx/ImageView;
    invoke-static {v1}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$200(Lcom/didi/common/ui/citypicker/CityPickActivity;)Lx/ImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->show(Landroid/view/View;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$2;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->clearBtn:Lx/ImageView;
    invoke-static {v1}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$200(Lcom/didi/common/ui/citypicker/CityPickActivity;)Lx/ImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->hide(Landroid/view/View;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 152
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$2;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/didi/common/ui/citypicker/CityPickActivity;->filterData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$100(Lcom/didi/common/ui/citypicker/CityPickActivity;Ljava/lang/String;)V

    .line 148
    return-void
.end method
