.class public final Lct/ca;
.super Lct/cd;
.source "TL"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field private final i:J

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lct/cd;-><init>()V

    .line 28
    iput v0, p0, Lct/ca;->a:I

    .line 29
    iput v0, p0, Lct/ca;->b:I

    iput v0, p0, Lct/ca;->c:I

    iput v0, p0, Lct/ca;->d:I

    iput v0, p0, Lct/ca;->e:I

    iput v0, p0, Lct/ca;->f:I

    .line 30
    iput v1, p0, Lct/ca;->g:I

    iput v1, p0, Lct/ca;->h:I

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct/ca;->i:J

    .line 37
    return-void
.end method

.method public static a(Lct/be;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lct/ca;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/eclipse/jdt/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 76
    invoke-virtual {p0}, Lct/be;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lct/be;->a()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 81
    new-instance v0, Lct/ca;

    invoke-direct {v0}, Lct/ca;-><init>()V

    .line 83
    instance-of v2, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_3

    .line 84
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 85
    const/4 v2, 0x2

    iput v2, v0, Lct/ca;->a:I

    .line 86
    invoke-direct {v0, p0, v1}, Lct/ca;->a(Lct/be;Landroid/telephony/TelephonyManager;)V

    .line 87
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    iput v1, v0, Lct/ca;->c:I

    .line 88
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v1

    iput v1, v0, Lct/ca;->d:I

    .line 89
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    iput v1, v0, Lct/ca;->e:I

    .line 90
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v1

    iput v1, v0, Lct/ca;->g:I

    .line 91
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v1

    iput v1, v0, Lct/ca;->h:I

    .line 92
    if-nez p2, :cond_2

    .line 93
    iput v3, v0, Lct/ca;->f:I

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 96
    iput v1, v0, Lct/ca;->f:I

    goto :goto_0

    .line 100
    :cond_3
    :try_start_0
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 101
    const/4 v2, 0x1

    iput v2, v0, Lct/ca;->a:I

    .line 102
    invoke-direct {v0, p0, v1}, Lct/ca;->a(Lct/be;Landroid/telephony/TelephonyManager;)V

    .line 103
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, v0, Lct/ca;->d:I

    .line 104
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, v0, Lct/ca;->e:I

    .line 111
    if-nez p2, :cond_4

    .line 112
    const/4 v1, -0x1

    iput v1, v0, Lct/ca;->f:I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 115
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x71

    iput v1, v0, Lct/ca;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private a(Lct/be;Landroid/telephony/TelephonyManager;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-virtual {p1}, Lct/be;->h()Lct/bf;

    move-result-object v0

    .line 125
    iget v1, v0, Lct/bf;->i:I

    .line 126
    iget v2, v0, Lct/bf;->j:I

    .line 128
    if-lez v1, :cond_0

    if-ltz v2, :cond_0

    .line 129
    iput v1, p0, Lct/ca;->b:I

    .line 130
    iput v2, p0, Lct/ca;->c:I

    .line 139
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 133
    invoke-static {p2, v1}, Lct/cl;->a(Landroid/telephony/TelephonyManager;[I)V

    .line 136
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Lct/bf;->i:I

    .line 137
    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lct/bf;->j:I

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/eclipse/jdt/annotation/NonNull;
    .end annotation

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lct/ca;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lct/ca;->j:Ljava/util/List;

    .line 163
    :cond_0
    iget-object v0, p0, Lct/ca;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .parameter
        .annotation build Lorg/eclipse/jdt/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 174
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lct/ca;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lct/ca;->j:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TxCellInfo [PhoneType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lct/ca;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MCC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/ca;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MNC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/ca;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LAC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/ca;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/ca;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RSSI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/ca;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LAT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/ca;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LNG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/ca;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lct/ca;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
