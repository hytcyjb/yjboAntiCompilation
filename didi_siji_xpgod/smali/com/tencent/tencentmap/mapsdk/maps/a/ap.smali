.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ap;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c:Lcom/tencent/tencentmap/mapsdk/maps/a/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/ar",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/tencent/tencentmap/mapsdk/maps/a/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/ar",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Lcom/tencent/tencentmap/mapsdk/maps/a/ao;

.field private e:Lcom/tencent/tencentmap/mapsdk/maps/a/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/am;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/am;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/ar;

    .line 30
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/al;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/al;-><init>()V

    sput-object v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/ar;

    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/tencentmap/mapsdk/maps/a/ap;
    .locals 2

    .prologue
    .line 142
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;

    .line 143
    .local v0, newPVH:Lcom/tencent/tencentmap/mapsdk/maps/a/ap;
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;->a:I

    iput v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;->a:I

    .line 144
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/ao;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/ao;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/ao;

    .line 145
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/ar;

    iput-object v1, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;->e:Lcom/tencent/tencentmap/mapsdk/maps/a/ar;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0           #newPVH:Lcom/tencent/tencentmap/mapsdk/maps/a/ap;
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;->a:I

    return v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ap;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/ao;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
