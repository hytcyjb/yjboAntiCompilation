.class public final Lcom/ddtaxi/common/tracesdk/r;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/ddtaxi/a/a/dl;

.field private static b:Lcom/ddtaxi/a/a/fc;

.field private static final c:Lcom/ddtaxi/a/a/dl;

.field private static d:Lcom/ddtaxi/a/a/fc;

.field private static final e:Lcom/ddtaxi/a/a/dl;

.field private static f:Lcom/ddtaxi/a/a/fc;

.field private static final g:Lcom/ddtaxi/a/a/dl;

.field private static h:Lcom/ddtaxi/a/a/fc;

.field private static final i:Lcom/ddtaxi/a/a/dl;

.field private static j:Lcom/ddtaxi/a/a/fc;

.field private static final k:Lcom/ddtaxi/a/a/dl;

.field private static l:Lcom/ddtaxi/a/a/fc;

.field private static final m:Lcom/ddtaxi/a/a/dl;

.field private static n:Lcom/ddtaxi/a/a/fc;

.field private static final o:Lcom/ddtaxi/a/a/dl;

.field private static p:Lcom/ddtaxi/a/a/fc;

.field private static q:Lcom/ddtaxi/a/a/dw;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "\n\u0013location_info.proto\u0012\u001acom.ddtaxi.common.tracesdk\"\u0098\u0001\n\u0008WifiInfo\u0012\u000c\n\u0004time\u0018\u0001 \u0002(\u0003\u00127\n\u0004wifi\u0018\u0002 \u0003(\u000b2).com.ddtaxi.common.tracesdk.WifiInfo.Wifi\u001aE\n\u0004Wifi\u0012\r\n\u0005bssid\u0018\u0001 \u0002(\t\u0012\u000c\n\u0004ssid\u0018\u0002 \u0001(\t\u0012\r\n\u0005level\u0018\u0003 \u0001(\u0005\u0012\u0011\n\tfrequency\u0018\u0004 \u0001(\u0005\"\u00e7\u0002\n\u0007GpsInfo\u0012\u000c\n\u0004time\u0018\u0001 \u0002(\u0003\u0012\u0011\n\tlongitude\u0018\u0002 \u0002(\u0001\u0012\u0010\n\u0008latitude\u0018\u0003 \u0002(\u0001\u0012\u0010\n\u0008altitude\u0018\u0004 \u0001(\u0001\u0012\u0010\n\u0008accuracy\u0018\u0005 \u0001(\u0002\u0012\u000c\n\u0004pdop\u0018\u0006 \u0001(\u0002\u0012\u000c\n\u0004hdop\u0018\u0007 \u0001(\u0002\u0012\u000c\n\u0004vdop\u0018\u0008 \u0001(\u0002\u0012\r\n\u0005speed\u0018\t \u0001(\u0002\u0012\u000e\n\u0006gps_ts\u0018\n \u0001(\u0003\u0012\u000f\n\u0007bearing\u0018\u000b \u0001(\u0002\u0012\u0016\n\u000enum"

    aput-object v1, v0, v5

    const-string v1, "_satellites\u0018\u000c \u0001(\u0005\u0012D\n\tsatellite\u0018\r \u0003(\u000b21.com.ddtaxi.common.tracesdk.GpsInfo.SatelliteInfo\u001aM\n\rSatelliteInfo\u0012\u000b\n\u0003prn\u0018\u0001 \u0002(\u0005\u0012\u000f\n\u0007azimuth\u0018\u0002 \u0001(\u0002\u0012\u0011\n\televation\u0018\u0003 \u0001(\u0002\u0012\u000b\n\u0003snr\u0018\u0004 \u0001(\u0002\"\u008a\u0003\n\u0008CellInfo\u0012\u000c\n\u0004time\u0018\u0001 \u0002(\u0003\u0012\u000b\n\u0003mcc\u0018\u0002 \u0002(\u0005\u0012\u000b\n\u0003mnc\u0018\u0003 \u0002(\u0005\u0012\u000b\n\u0003lac\u0018\u0004 \u0002(\u0005\u0012\u000b\n\u0003cid\u0018\u0005 \u0002(\u0005\u0012I\n\tcell_type\u0018\u0006 \u0001(\u000e2-.com.ddtaxi.common.tracesdk.CellInfo.CellType:\u0007UNKNOWN\u0012\u000c\n\u0004rssi\u0018\t \u0001(\u0005\u0012\u000b\n\u0003psc\u0018\u0007 \u0001(\u0005\u0012U\n\u0013neighboringCellInfo\u0018\u0008 \u0003(\u000b28.com.ddtaxi.common.tra"

    aput-object v1, v0, v6

    const-string v1, "cesdk.CellInfo.NeighboringCellInfo\u001aJ\n\u0013NeighboringCellInfo\u0012\u000b\n\u0003lac\u0018\u0001 \u0001(\u0005\u0012\u000b\n\u0003cid\u0018\u0002 \u0001(\u0005\u0012\u000c\n\u0004rssi\u0018\u0003 \u0001(\u0005\u0012\u000b\n\u0003psc\u0018\u0004 \u0001(\u0005\"3\n\u0008CellType\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u0007\n\u0003GSM\u0010\u0001\u0012\u0008\n\u0004CDMA\u0010\u0002\u0012\u0007\n\u0003LTE\u0010\u0003\"\u0095\u0001\n\u000cExtraLocInfo\u0012\u000c\n\u0004time\u0018\u0001 \u0002(\u0003\u0012\u0011\n\tlongitude\u0018\u0002 \u0002(\u0001\u0012\u0010\n\u0008latitude\u0018\u0003 \u0002(\u0001\u0012\u0010\n\u0008altitude\u0018\u0004 \u0001(\u0001\u0012\u0010\n\u0008accuracy\u0018\u0005 \u0001(\u0002\u0012\r\n\u0005speed\u0018\u0006 \u0001(\u0002\u0012\u000e\n\u0006gps_ts\u0018\u0007 \u0001(\u0003\u0012\u000f\n\u0007bearing\u0018\u0008 \u0001(\u0002\"\u00f6\u0001\n\tTraceData\u00127\n\twifi_list\u0018\u0001 \u0003(\u000b2$.com.ddtaxi.common.tracesdk.WifiInfo\u00125\n\u0008gps_list\u0018\u0002"

    aput-object v1, v0, v7

    const-string v1, " \u0003(\u000b2#.com.ddtaxi.common.tracesdk.GpsInfo\u00127\n\tcell_list\u0018\u0003 \u0003(\u000b2$.com.ddtaxi.common.tracesdk.CellInfo\u0012@\n\u000eextra_loc_list\u0018\u0004 \u0003(\u000b2(.com.ddtaxi.common.tracesdk.ExtraLocInfoB-\n\u001acom.ddtaxi.common.tracesdkB\u000fLocInfoProtoBuf"

    aput-object v1, v0, v8

    new-instance v1, Lcom/ddtaxi/common/tracesdk/s;

    invoke-direct {v1}, Lcom/ddtaxi/common/tracesdk/s;-><init>()V

    new-array v2, v5, [Lcom/ddtaxi/a/a/dw;

    invoke-static {v0, v2, v1}, Lcom/ddtaxi/a/a/dw;->a([Ljava/lang/String;[Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dx;)V

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->a()Lcom/ddtaxi/a/a/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dw;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dl;

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->a:Lcom/ddtaxi/a/a/dl;

    new-instance v0, Lcom/ddtaxi/a/a/fc;

    sget-object v1, Lcom/ddtaxi/common/tracesdk/r;->a:Lcom/ddtaxi/a/a/dl;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Time"

    aput-object v3, v2, v5

    const-string v3, "Wifi"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;-><init>(Lcom/ddtaxi/a/a/dl;[Ljava/lang/String;)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->b:Lcom/ddtaxi/a/a/fc;

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->a:Lcom/ddtaxi/a/a/dl;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dl;

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->c:Lcom/ddtaxi/a/a/dl;

    new-instance v0, Lcom/ddtaxi/a/a/fc;

    sget-object v1, Lcom/ddtaxi/common/tracesdk/r;->c:Lcom/ddtaxi/a/a/dl;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Bssid"

    aput-object v3, v2, v5

    const-string v3, "Ssid"

    aput-object v3, v2, v6

    const-string v3, "Level"

    aput-object v3, v2, v7

    const-string v3, "Frequency"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;-><init>(Lcom/ddtaxi/a/a/dl;[Ljava/lang/String;)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->d:Lcom/ddtaxi/a/a/fc;

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->a()Lcom/ddtaxi/a/a/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dw;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dl;

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->e:Lcom/ddtaxi/a/a/dl;

    new-instance v0, Lcom/ddtaxi/a/a/fc;

    sget-object v1, Lcom/ddtaxi/common/tracesdk/r;->e:Lcom/ddtaxi/a/a/dl;

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Time"

    aput-object v3, v2, v5

    const-string v3, "Longitude"

    aput-object v3, v2, v6

    const-string v3, "Latitude"

    aput-object v3, v2, v7

    const-string v3, "Altitude"

    aput-object v3, v2, v8

    const-string v3, "Accuracy"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Pdop"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Hdop"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Vdop"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Speed"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "GpsTs"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Bearing"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "NumSatellites"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Satellite"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;-><init>(Lcom/ddtaxi/a/a/dl;[Ljava/lang/String;)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->f:Lcom/ddtaxi/a/a/fc;

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->e:Lcom/ddtaxi/a/a/dl;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dl;

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->g:Lcom/ddtaxi/a/a/dl;

    new-instance v0, Lcom/ddtaxi/a/a/fc;

    sget-object v1, Lcom/ddtaxi/common/tracesdk/r;->g:Lcom/ddtaxi/a/a/dl;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Prn"

    aput-object v3, v2, v5

    const-string v3, "Azimuth"

    aput-object v3, v2, v6

    const-string v3, "Elevation"

    aput-object v3, v2, v7

    const-string v3, "Snr"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;-><init>(Lcom/ddtaxi/a/a/dl;[Ljava/lang/String;)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->h:Lcom/ddtaxi/a/a/fc;

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->a()Lcom/ddtaxi/a/a/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dw;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dl;

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->i:Lcom/ddtaxi/a/a/dl;

    new-instance v0, Lcom/ddtaxi/a/a/fc;

    sget-object v1, Lcom/ddtaxi/common/tracesdk/r;->i:Lcom/ddtaxi/a/a/dl;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Time"

    aput-object v3, v2, v5

    const-string v3, "Mcc"

    aput-object v3, v2, v6

    const-string v3, "Mnc"

    aput-object v3, v2, v7

    const-string v3, "Lac"

    aput-object v3, v2, v8

    const-string v3, "Cid"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "CellType"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Rssi"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Psc"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "NeighboringCellInfo"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;-><init>(Lcom/ddtaxi/a/a/dl;[Ljava/lang/String;)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->j:Lcom/ddtaxi/a/a/fc;

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->i:Lcom/ddtaxi/a/a/dl;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dl;

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->k:Lcom/ddtaxi/a/a/dl;

    new-instance v0, Lcom/ddtaxi/a/a/fc;

    sget-object v1, Lcom/ddtaxi/common/tracesdk/r;->k:Lcom/ddtaxi/a/a/dl;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Lac"

    aput-object v3, v2, v5

    const-string v3, "Cid"

    aput-object v3, v2, v6

    const-string v3, "Rssi"

    aput-object v3, v2, v7

    const-string v3, "Psc"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;-><init>(Lcom/ddtaxi/a/a/dl;[Ljava/lang/String;)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->l:Lcom/ddtaxi/a/a/fc;

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->a()Lcom/ddtaxi/a/a/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dw;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dl;

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->m:Lcom/ddtaxi/a/a/dl;

    new-instance v0, Lcom/ddtaxi/a/a/fc;

    sget-object v1, Lcom/ddtaxi/common/tracesdk/r;->m:Lcom/ddtaxi/a/a/dl;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Time"

    aput-object v3, v2, v5

    const-string v3, "Longitude"

    aput-object v3, v2, v6

    const-string v3, "Latitude"

    aput-object v3, v2, v7

    const-string v3, "Altitude"

    aput-object v3, v2, v8

    const-string v3, "Accuracy"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Speed"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "GpsTs"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Bearing"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;-><init>(Lcom/ddtaxi/a/a/dl;[Ljava/lang/String;)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->n:Lcom/ddtaxi/a/a/fc;

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->a()Lcom/ddtaxi/a/a/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dw;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dl;

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->o:Lcom/ddtaxi/a/a/dl;

    new-instance v0, Lcom/ddtaxi/a/a/fc;

    sget-object v1, Lcom/ddtaxi/common/tracesdk/r;->o:Lcom/ddtaxi/a/a/dl;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "WifiList"

    aput-object v3, v2, v5

    const-string v3, "GpsList"

    aput-object v3, v2, v6

    const-string v3, "CellList"

    aput-object v3, v2, v7

    const-string v3, "ExtraLocList"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;-><init>(Lcom/ddtaxi/a/a/dl;[Ljava/lang/String;)V

    sput-object v0, Lcom/ddtaxi/common/tracesdk/r;->p:Lcom/ddtaxi/a/a/fc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ddtaxi/a/a/dw;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->q:Lcom/ddtaxi/a/a/dw;

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/dw;)V
    .locals 0

    sput-object p0, Lcom/ddtaxi/common/tracesdk/r;->q:Lcom/ddtaxi/a/a/dw;

    return-void
.end method

.method public static a(Lcom/ddtaxi/a/a/ei;)V
    .locals 0

    return-void
.end method

.method static synthetic b()Lcom/ddtaxi/a/a/dl;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->c:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method static synthetic c()Lcom/ddtaxi/a/a/fc;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->d:Lcom/ddtaxi/a/a/fc;

    return-object v0
.end method

.method static synthetic d()Lcom/ddtaxi/a/a/dl;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->a:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method static synthetic e()Lcom/ddtaxi/a/a/fc;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->b:Lcom/ddtaxi/a/a/fc;

    return-object v0
.end method

.method static synthetic f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->g:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method static synthetic g()Lcom/ddtaxi/a/a/fc;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->h:Lcom/ddtaxi/a/a/fc;

    return-object v0
.end method

.method static synthetic h()Lcom/ddtaxi/a/a/dl;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->e:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method static synthetic i()Lcom/ddtaxi/a/a/fc;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->f:Lcom/ddtaxi/a/a/fc;

    return-object v0
.end method

.method static synthetic j()Lcom/ddtaxi/a/a/dl;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->k:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method static synthetic k()Lcom/ddtaxi/a/a/fc;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->l:Lcom/ddtaxi/a/a/fc;

    return-object v0
.end method

.method static synthetic l()Lcom/ddtaxi/a/a/dl;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->i:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method static synthetic m()Lcom/ddtaxi/a/a/fc;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->j:Lcom/ddtaxi/a/a/fc;

    return-object v0
.end method

.method static synthetic n()Lcom/ddtaxi/a/a/dl;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->m:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method static synthetic o()Lcom/ddtaxi/a/a/fc;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->n:Lcom/ddtaxi/a/a/fc;

    return-object v0
.end method

.method static synthetic p()Lcom/ddtaxi/a/a/dl;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->o:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method static synthetic q()Lcom/ddtaxi/a/a/fc;
    .locals 1

    sget-object v0, Lcom/ddtaxi/common/tracesdk/r;->p:Lcom/ddtaxi/a/a/fc;

    return-object v0
.end method
