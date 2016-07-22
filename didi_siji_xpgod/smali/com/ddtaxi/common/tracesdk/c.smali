.class final Lcom/ddtaxi/common/tracesdk/c;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic a:Lcom/ddtaxi/common/tracesdk/a;


# direct methods
.method private constructor <init>(Lcom/ddtaxi/common/tracesdk/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/c;->a:Lcom/ddtaxi/common/tracesdk/a;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/common/tracesdk/a;Lcom/ddtaxi/common/tracesdk/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/c;-><init>(Lcom/ddtaxi/common/tracesdk/a;)V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    const-string v0, "#onCellLocationChanged"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/c;->a:Lcom/ddtaxi/common/tracesdk/a;

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/a;->a(Lcom/ddtaxi/common/tracesdk/a;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3

    const-string v0, "#onSignalStrengthsChanged"

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/bb;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    if-ltz v0, :cond_1

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/c;->a:Lcom/ddtaxi/common/tracesdk/a;

    sget-object v2, Lcom/ddtaxi/common/tracesdk/w;->b:Lcom/ddtaxi/common/tracesdk/w;

    invoke-static {v1, v2}, Lcom/ddtaxi/common/tracesdk/a;->a(Lcom/ddtaxi/common/tracesdk/a;Lcom/ddtaxi/common/tracesdk/w;)V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/c;->a:Lcom/ddtaxi/common/tracesdk/a;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x71

    invoke-static {v1, v0}, Lcom/ddtaxi/common/tracesdk/a;->a(Lcom/ddtaxi/common/tracesdk/a;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-class v0, Landroid/telephony/SignalStrength;

    const-string v1, "getLteRsrp"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/c;->a:Lcom/ddtaxi/common/tracesdk/a;

    sget-object v2, Lcom/ddtaxi/common/tracesdk/w;->d:Lcom/ddtaxi/common/tracesdk/w;

    invoke-static {v1, v2}, Lcom/ddtaxi/common/tracesdk/a;->a(Lcom/ddtaxi/common/tracesdk/a;Lcom/ddtaxi/common/tracesdk/w;)V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/c;->a:Lcom/ddtaxi/common/tracesdk/a;

    invoke-static {v1, v0}, Lcom/ddtaxi/common/tracesdk/a;->a(Lcom/ddtaxi/common/tracesdk/a;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/c;->a:Lcom/ddtaxi/common/tracesdk/a;

    sget-object v1, Lcom/ddtaxi/common/tracesdk/w;->c:Lcom/ddtaxi/common/tracesdk/w;

    invoke-static {v0, v1}, Lcom/ddtaxi/common/tracesdk/a;->a(Lcom/ddtaxi/common/tracesdk/a;Lcom/ddtaxi/common/tracesdk/w;)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/c;->a:Lcom/ddtaxi/common/tracesdk/a;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ddtaxi/common/tracesdk/a;->a(Lcom/ddtaxi/common/tracesdk/a;I)V

    goto :goto_0
.end method
