.class final Lct/bg;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Lct/bh;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J

.field private d:Lct/cb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lct/bg;->a:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    iget-object v3, p0, Lct/bg;->a:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    if-nez p2, :cond_0

    .line 55
    invoke-static {v3}, Lct/bg;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 70
    :goto_0
    return-object v0

    .line 60
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v4, 0xa

    if-lt v0, v4, :cond_2

    move v0, v1

    .line 61
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lct/bg;->b:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x9c40

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 64
    :goto_2
    if-nez v1, :cond_1

    if-eqz v0, :cond_4

    .line 65
    :cond_1
    invoke-static {v3}, Lct/bg;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 60
    goto :goto_1

    :cond_3
    move v1, v2

    .line 61
    goto :goto_2

    .line 70
    :cond_4
    const-string v0, "[]"

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 38
    iget-object v0, p0, Lct/bg;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    iput-wide v1, p0, Lct/bg;->b:J

    .line 40
    iput-wide v1, p0, Lct/bg;->c:J

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lct/bg;->d:Lct/cb;

    .line 42
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-wide p1, p0, Lct/bg;->b:J

    .line 26
    return-void
.end method

.method public final a(ZLct/cb;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 77
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v8

    .line 80
    :cond_1
    iget-object v0, p0, Lct/bg;->d:Lct/cb;

    if-nez v0, :cond_2

    .line 81
    iput-object p2, p0, Lct/bg;->d:Lct/cb;

    goto :goto_0

    .line 85
    :cond_2
    const/4 v9, 0x0

    .line 86
    iget-object v0, p0, Lct/bg;->d:Lct/cb;

    iget-object v2, v0, Lct/cb;->a:Landroid/location/Location;

    .line 87
    iget-object v6, p2, Lct/cb;->a:Landroid/location/Location;

    .line 88
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lct/b$a;->a(DDDD)D

    move-result-wide v0

    .line 91
    const-wide/high16 v2, 0x4049

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    move v0, v8

    .line 94
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lct/bg;->c:J

    sub-long/2addr v1, v3

    .line 95
    const-wide/16 v3, 0x1770

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    .line 99
    :goto_2
    if-eqz v8, :cond_0

    .line 100
    iput-object p2, p0, Lct/bg;->d:Lct/cb;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct/bg;->c:J

    goto :goto_0

    :cond_3
    move v8, v0

    goto :goto_2

    :cond_4
    move v0, v9

    goto :goto_1
.end method
