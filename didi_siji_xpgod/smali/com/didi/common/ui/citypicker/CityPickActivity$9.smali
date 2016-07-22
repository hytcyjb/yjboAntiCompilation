.class Lcom/didi/common/ui/citypicker/CityPickActivity$9;
.super Ljava/lang/Object;
.source "CityPickActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/citypicker/CityPickActivity;
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
    .line 380
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$9;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$9;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #calls: Lcom/didi/common/ui/citypicker/CityPickActivity;->back()V
    invoke-static {v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$1800(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    .line 384
    return-void
.end method
