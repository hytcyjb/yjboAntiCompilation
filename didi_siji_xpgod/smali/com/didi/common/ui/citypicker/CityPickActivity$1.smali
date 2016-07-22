.class Lcom/didi/common/ui/citypicker/CityPickActivity$1;
.super Ljava/lang/Object;
.source "CityPickActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/common/ui/citypicker/CityPickActivity;->performGetCityList()V
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
    .line 106
    iput-object p1, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$1;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/common/ui/citypicker/CityPickActivity$1;->this$0:Lcom/didi/common/ui/citypicker/CityPickActivity;

    #calls: Lcom/didi/common/ui/citypicker/CityPickActivity;->getCityList()V
    invoke-static {v0}, Lcom/didi/common/ui/citypicker/CityPickActivity;->access$000(Lcom/didi/common/ui/citypicker/CityPickActivity;)V

    .line 111
    return-void
.end method
