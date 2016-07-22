.class Lcom/ddtaxi/common/tracesdk/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# instance fields
.field final synthetic a:Lcom/ddtaxi/common/tracesdk/l;


# direct methods
.method constructor <init>(Lcom/ddtaxi/common/tracesdk/l;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/o;->a:Lcom/ddtaxi/common/tracesdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/o;->a:Lcom/ddtaxi/common/tracesdk/l;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/l;->d(Lcom/ddtaxi/common/tracesdk/l;)Lcom/ddtaxi/common/tracesdk/bc;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ddtaxi/common/tracesdk/bc;->a(Ljava/lang/String;)V

    return-void
.end method
