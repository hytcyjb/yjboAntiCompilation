.class Lcom/didi/common/ui/citypicker/CityPickActivity$4;
.super Ljava/lang/Object;
.source "CityPickActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 177
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$4;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$4;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #getter for: Lcom/didi/common/ui/citypicker/CityPickActivity;->editText:Lcom/didi/common/ui/citypicker/ClearEditText;
    invoke-static {v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$300(Lcom/didi/common/ui/citypicker/CityPickActivity;)Lcom/didi/common/ui/citypicker/ClearEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/citypicker/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method
