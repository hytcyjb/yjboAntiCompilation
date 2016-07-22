.class Lcom/didi/frame/carmodel/CarModelOperator$2;
.super Ljava/lang/Object;
.source "CarModelOperator.java"

# interfaces
.implements Lcom/didi/common/helper/LocationHelper$CityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/carmodel/CarModelOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/carmodel/CarModelOperator;


# direct methods
.method constructor <init>(Lcom/didi/frame/carmodel/CarModelOperator;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/didi/frame/carmodel/CarModelOperator$2;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sourceCityId"
    .parameter "targetCityId"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator$2;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->clear()V

    .line 83
    iget-object v0, p0, Lcom/didi/frame/carmodel/CarModelOperator$2;->this$0:Lcom/didi/frame/carmodel/CarModelOperator;

    #calls: Lcom/didi/frame/carmodel/CarModelOperator;->onBusinessCityChange(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/didi/frame/carmodel/CarModelOperator;->access$100(Lcom/didi/frame/carmodel/CarModelOperator;Ljava/lang/String;)V

    .line 84
    return-void
.end method
