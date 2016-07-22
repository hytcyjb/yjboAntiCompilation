.class public Lcom/didi/car/helper/AlarmManagerFactory;
.super Ljava/lang/Object;
.source "AlarmManagerFactory.java"


# static fields
.field private static sAlarmManager:Lcom/didi/car/helper/AlarmAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapter()Lcom/didi/car/helper/AlarmAdapter;
    .locals 3

    .prologue
    .line 8
    sget-object v2, Lcom/didi/car/helper/AlarmManagerFactory;->sAlarmManager:Lcom/didi/car/helper/AlarmAdapter;

    if-nez v2, :cond_0

    .line 9
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 10
    .local v0, manufactrue:Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 11
    .local v1, model:Ljava/lang/String;
    const-string v2, "HUAWEI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    new-instance v2, Lcom/didi/car/helper/AlarmCustomAdapter;

    invoke-direct {v2}, Lcom/didi/car/helper/AlarmCustomAdapter;-><init>()V

    sput-object v2, Lcom/didi/car/helper/AlarmManagerFactory;->sAlarmManager:Lcom/didi/car/helper/AlarmAdapter;

    .line 23
    :cond_0
    :goto_0
    sget-object v2, Lcom/didi/car/helper/AlarmManagerFactory;->sAlarmManager:Lcom/didi/car/helper/AlarmAdapter;

    return-object v2

    .line 13
    :cond_1
    const-string v2, "Xiaomi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    new-instance v2, Lcom/didi/car/helper/AlarmCustomAdapter;

    invoke-direct {v2}, Lcom/didi/car/helper/AlarmCustomAdapter;-><init>()V

    sput-object v2, Lcom/didi/car/helper/AlarmManagerFactory;->sAlarmManager:Lcom/didi/car/helper/AlarmAdapter;

    goto :goto_0

    .line 16
    :cond_2
    const-string v2, "MI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "MI 2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_4

    :cond_3
    const-string v2, "K-Touch S2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 18
    :cond_4
    new-instance v2, Lcom/didi/car/helper/AlarmCustomAdapter;

    invoke-direct {v2}, Lcom/didi/car/helper/AlarmCustomAdapter;-><init>()V

    sput-object v2, Lcom/didi/car/helper/AlarmManagerFactory;->sAlarmManager:Lcom/didi/car/helper/AlarmAdapter;

    .line 20
    :cond_5
    new-instance v2, Lcom/didi/car/helper/AlarmAdapter;

    invoke-direct {v2}, Lcom/didi/car/helper/AlarmAdapter;-><init>()V

    sput-object v2, Lcom/didi/car/helper/AlarmManagerFactory;->sAlarmManager:Lcom/didi/car/helper/AlarmAdapter;

    goto :goto_0
.end method
