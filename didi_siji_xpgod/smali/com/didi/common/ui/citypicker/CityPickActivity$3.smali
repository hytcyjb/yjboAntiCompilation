.class Lcom/didi/common/ui/citypicker/CityPickActivity$3;
.super Ljava/lang/Object;
.source "CityPickActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 165
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$3;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 169
    if-eqz p2, :cond_0

    .line 170
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$3;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    iget-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$3;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->editText:Lcom/didi/common/ui/citypicker/ClearEditText;
    invoke-static {v1}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$300(Lcom/didi/common/ui/citypicker/CityPickActivity;)Lcom/didi/common/ui/citypicker/ClearEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$3;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    iget-object v1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$3;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->editText:Lcom/didi/common/ui/citypicker/ClearEditText;
    invoke-static {v1}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$300(Lcom/didi/common/ui/citypicker/CityPickActivity;)Lcom/didi/common/ui/citypicker/ClearEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method
