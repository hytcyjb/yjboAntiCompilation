.class public Lcom/ddtaxi/common/tracesdk/bc;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "pdop"

.field public static final b:Ljava/lang/String; = "hdop"

.field public static final c:Ljava/lang/String; = "vdop"

.field public static final d:Ljava/lang/String; = "num_satellites"

.field private static final e:Ljava/lang/String; = "NmeaParser"

.field private static final g:Ljava/util/TimeZone; = null

.field private static final h:F = 0.5144445f


# instance fields
.field private f:J

.field private final i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/location/Location;

.field private n:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/ddtaxi/common/tracesdk/bc;->g:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/bc;->i:Ljava/lang/String;

    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p2}, Lcom/ddtaxi/common/tracesdk/bc;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/bc;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/bc;->d(Ljava/lang/String;)D

    move-result-wide v0

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x53

    if-ne v3, v4, :cond_1

    neg-double v0, v0

    move-wide v3, v0

    :goto_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/ddtaxi/common/tracesdk/bc;->d(Ljava/lang/String;)D

    move-result-wide v0

    const/4 v5, 0x0

    invoke-virtual {p4, v5}, Ljava/lang/String;->charAt(I)C
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    const/16 v5, 0x57

    if-ne v2, v5, :cond_0

    neg-double v0, v0

    :cond_0
    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    move v0, v2

    goto :goto_1

    :cond_1
    move-wide v3, v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->j:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v1, v6, v7}, Landroid/location/Location;->setTime(J)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    float-to-int v6, v0

    int-to-float v1, v6

    sub-float/2addr v0, v1

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-int v7, v0

    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lcom/ddtaxi/common/tracesdk/bc;->g:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->j:I

    iget v2, p0, Lcom/ddtaxi/common/tracesdk/bc;->k:I

    iget v3, p0, Lcom/ddtaxi/common/tracesdk/bc;->l:I

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    int-to-long v2, v7

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "NmeaParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error parsing timestamp "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v1, v6, v7}, Landroid/location/Location;->setTime(J)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->n:Landroid/os/Bundle;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->n:Landroid/os/Bundle;

    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/bc;->n:Landroid/os/Bundle;

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/bc;->n:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->n:Landroid/os/Bundle;

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/bc;->n:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x6

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x6

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit16 v0, v0, 0x7d0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->j:I

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/bc;->k:I

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->l:I

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->n:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->n:Landroid/os/Bundle;

    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->n:Landroid/os/Bundle;

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->n:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->n:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->n:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)D
    .locals 6

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int/lit8 v2, v2, 0x64

    mul-int/lit8 v3, v2, 0x64

    int-to-double v3, v3

    sub-double/2addr v0, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x404e

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setAltitude(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->removeAltitude()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v1, v0}, Landroid/location/Location;->setBearing(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->removeBearing()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v1, 0x3f03b2a2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v1, v0}, Landroid/location/Location;->setSpeed(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->removeSpeed()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()Landroid/location/Location;
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ddtaxi/common/tracesdk/bc;->f:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    cmpl-double v1, v1, v5

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    cmpl-double v1, v1, v5

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/bc;->m:Landroid/location/Location;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 12

    const/4 v3, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ddtaxi/common/tracesdk/bc;->f:J

    const-string v2, "$G"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v4, v2

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    const-string v6, "\\*"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aget-object v2, v2, v6

    aput-object v2, v4, v5

    const/4 v2, 0x0

    aget-object v2, v4, v2

    const/4 v5, 0x3

    const/4 v6, 0x6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const-string v6, "GGA"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x2

    aget-object v1, v4, v5

    const/4 v2, 0x3

    aget-object v0, v4, v0

    const/4 v3, 0x4

    aget-object v2, v4, v2

    const/4 v5, 0x5

    aget-object v3, v4, v3

    const/4 v6, 0x6

    aget-object v5, v4, v5

    const/4 v7, 0x7

    aget-object v6, v4, v6

    const/16 v8, 0x8

    aget-object v7, v4, v7

    const/16 v9, 0x9

    aget-object v8, v4, v8

    const/16 v10, 0xa

    aget-object v9, v4, v9

    const/16 v11, 0xb

    aget-object v10, v4, v10

    const/16 v10, 0xc

    aget-object v11, v4, v11

    const/16 v11, 0xd

    aget-object v10, v4, v10

    aget-object v4, v4, v11

    const-string v4, "0"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v1}, Lcom/ddtaxi/common/tracesdk/bc;->b(Ljava/lang/String;)Z

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/ddtaxi/common/tracesdk/bc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, v9}, Lcom/ddtaxi/common/tracesdk/bc;->e(Ljava/lang/String;)Z

    const-string v0, "num_satellites"

    invoke-direct {p0, v0, v7}, Lcom/ddtaxi/common/tracesdk/bc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "hdop"

    invoke-direct {p0, v0, v8}, Lcom/ddtaxi/common/tracesdk/bc;->c(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NmeaParser"

    const-string v2, "AIOOBE"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v6, "GSA"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v2, 0x2

    aget-object v3, v4, v5

    aget-object v2, v4, v2

    :goto_1
    const/16 v2, 0xc

    if-lt v0, v2, :cond_3

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v4, v1

    add-int/lit8 v2, v0, 0x1

    aget-object v0, v4, v0

    add-int/lit8 v3, v2, 0x1

    aget-object v2, v4, v2

    const-string v3, "pdop"

    invoke-direct {p0, v3, v1}, Lcom/ddtaxi/common/tracesdk/bc;->c(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "hdop"

    invoke-direct {p0, v1, v0}, Lcom/ddtaxi/common/tracesdk/bc;->c(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "vdop"

    invoke-direct {p0, v0, v2}, Lcom/ddtaxi/common/tracesdk/bc;->c(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v2, v1, 0x1

    aget-object v1, v4, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_4
    const-string v1, "GSV"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    aget-object v2, v4, v5

    const/4 v2, 0x3

    aget-object v1, v4, v1

    aget-object v1, v4, v2

    move v2, v0

    move v0, v3

    :goto_2
    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v0, 0x2

    array-length v5, v4

    if-ge v1, v5, :cond_5

    add-int/lit8 v1, v0, 0x1

    aget-object v0, v4, v0

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v4, v1

    add-int/lit8 v1, v0, 0x1

    aget-object v0, v4, v0

    array-length v0, v4

    if-ge v1, v0, :cond_7

    add-int/lit8 v0, v1, 0x1

    aget-object v1, v4, v1

    :cond_5
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_6
    const-string v0, "RMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    aget-object v1, v4, v5

    const/4 v2, 0x3

    aget-object v0, v4, v0

    const/4 v3, 0x4

    aget-object v2, v4, v2

    const/4 v5, 0x5

    aget-object v3, v4, v3

    const/4 v6, 0x6

    aget-object v5, v4, v5

    const/4 v7, 0x7

    aget-object v6, v4, v6

    const/16 v8, 0x8

    aget-object v7, v4, v7

    const/16 v9, 0x9

    aget-object v8, v4, v8

    const/16 v10, 0xa

    aget-object v9, v4, v9

    const/16 v11, 0xb

    aget-object v10, v4, v10

    const/16 v10, 0xc

    aget-object v11, v4, v11

    aget-object v4, v4, v10

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x41

    if-ne v0, v4, :cond_0

    invoke-direct {p0, v1, v9}, Lcom/ddtaxi/common/tracesdk/bc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, v2, v3, v5, v6}, Lcom/ddtaxi/common/tracesdk/bc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0, v8}, Lcom/ddtaxi/common/tracesdk/bc;->f(Ljava/lang/String;)Z

    invoke-direct {p0, v7}, Lcom/ddtaxi/common/tracesdk/bc;->g(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_3
.end method
