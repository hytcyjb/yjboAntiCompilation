.class public Lcom/tendcloud/tenddata/ag;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String; = "td-cache"

.field private static final d:Ljava/lang/String; = "td-%.zip"

.field private static final e:Ljava/lang/String; = "td.tmp-"

.field private static final f:Ljava/lang/String; = "pref_longtime"

.field private static final g:Ljava/lang/String; = "td.sdk.digest."

.field private static final m:[B

.field private static final n:[I

.field private static final o:[I


# instance fields
.field a:Lcom/tendcloud/tenddata/u;

.field b:Landroid/content/Context;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x14

    const/16 v0, 0x3c8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tendcloud/tenddata/ag;->m:[B

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tendcloud/tenddata/ag;->n:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/tendcloud/tenddata/ag;->o:[I

    return-void

    :array_0
    .array-data 0x1
        0x16t
        0x2at
        0xa5t
        0x11t
        0x9at
        0x72t
        0x6et
        0xd6t
        0xe7t
        0x31t
        0x37t
        0xb0t
        0xdat
        0x15t
        0x35t
        0x50t
        0x4dt
        0x15t
        0x1bt
        0x3ct
        0x4dt
        0x8at
        0xe4t
        0xadt
        0x1t
        0x25t
        0xeet
        0x7ft
        0x4et
        0x5t
        0xcbt
        0x68t
        0xbdt
        0xaet
        0xe8t
        0x2dt
        0x20t
        0x62t
        0xc1t
        0x8ct
        0x55t
        0xc8t
        0xf8t
        0xa0t
        0x42t
        0x4at
        0x93t
        0x7ct
        0xfet
        0x90t
        0xbt
        0xaat
        0xc0t
        0x4ct
        0xe0t
        0xa9t
        0xfat
        0xf5t
        0xb1t
        0x43t
        0xfct
        0xet
        0x5ft
        0x23t
        0x6et
        0xabt
        0xa1t
        0xd3t
        0xf5t
        0xd8t
        0x84t
        0xbct
        0x7at
        0x23t
        0x47t
        0xbct
        0xct
        0x98t
        0xcbt
        0x1ct
        0xc3t
        0x31t
        0x88t
        0xf7t
        0xbct
        0xaat
        0x50t
        0xc2t
        0xe0t
        0xdbt
        0x4ct
        0x89t
        0x68t
        0x72t
        0xc4t
        0xdat
        0xa7t
        0x5at
        0x86t
        0xf6t
        0xc3t
        0x2ft
        0xet
        0xb2t
        0xc0t
        0x12t
        0x70t
        0x8ct
        0x54t
        0x61t
        0xedt
        0x8ft
        0xa8t
        0x74t
        0x20t
        0x78t
        0x50t
        0x2et
        0xf0t
        0xdet
        0x6at
        0x5t
        0xe0t
        0x93t
        0x2at
        0x3ct
        0x87t
        0xa5t
        0xaat
        0xc7t
        0xdt
        0xc3t
        0xb2t
        0x40t
        0xe5t
        0x92t
        0x3bt
        0x2ct
        0x60t
        0xc9t
        0xfft
        0x1t
        0xb5t
        0x9dt
        0xact
        0x7bt
        0x5ct
        0x4at
        0x63t
        0x94t
        0x8ct
        0x6ct
        0x91t
        0xet
        0xa7t
        0x55t
        0x89t
        0x24t
        0x69t
        0x3et
        0xabt
        0xet
        0x40t
        0x50t
        0x66t
        0x2et
        0xd4t
        0x4ft
        0x4dt
        0xc5t
        0xb2t
        0xfat
        0x84t
        0x1bt
        0x6t
        0x1dt
        0x4ct
        0x1at
        0x6t
        0xdbt
        0xf8t
        0xe7t
        0x1ct
        0x1et
        0x23t
        0xcet
        0xft
        0x2t
        0x2ft
        0x5ft
        0x81t
        0xf6t
        0xf7t
        0x8bt
        0xft
        0x97t
        0xcdt
        0x75t
        0x1ct
        0xb6t
        0xcft
        0x4ft
        0x15t
        0xd1t
        0x28t
        0xe1t
        0xd4t
        0x17t
        0xf0t
        0x92t
        0x8at
        0xebt
        0x30t
        0xa0t
        0x47t
        0xaat
        0xdbt
        0xedt
        0xd1t
        0xd0t
        0x5at
        0xaat
        0xc5t
        0x49t
        0x28t
        0x6ct
        0x98t
        0x4ct
        0xe5t
        0xb2t
        0xd7t
        0x64t
        0x51t
        0x51t
        0x4et
        0x21t
        0xf8t
        0x12t
        0x59t
        0x9t
        0x2at
        0xd0t
        0xc7t
        0xeet
        0xa9t
        0x70t
        0xf1t
        0x3bt
        0x57t
        0x6t
        0x9ft
        0x6at
        0x88t
        0xe7t
        0x71t
        0x74t
        0xa8t
        0x8ct
        0xfct
        0x78t
        0xfet
        0x89t
        0x5ct
        0x3et
        0xd0t
        0x3at
        0xbat
        0xbat
        0x1bt
        0x81t
        0x42t
        0x36t
        0xd4t
        0x4ct
        0x4et
        0x2bt
        0x30t
        0x7ft
        0x5et
        0x9bt
        0x1t
        0x95t
        0x4dt
        0x94t
        0x47t
        0x14t
        0x33t
        0xdet
        0xfbt
        0x54t
        0xe5t
        0xa7t
        0x9at
        0x8bt
        0x9bt
        0xe2t
        0x81t
        0xf9t
        0xd6t
        0x47t
        0xbet
        0x27t
        0x94t
        0xfdt
        0x95t
        0x70t
        0xf2t
        0x9dt
        0xct
        0x43t
        0x27t
        0xf8t
        0x5ft
        0xb9t
        0x8t
        0x73t
        0xdct
        0x8ct
        0xd0t
        0x55t
        0x9ct
        0x3t
        0x1bt
        0x4et
        0xft
        0xc3t
        0x4ct
        0xf6t
        0xd1t
        0x10t
        0x86t
        0x87t
        0xa9t
        0x58t
        0x57t
        0x67t
        0xfft
        0x72t
        0x4dt
        0x18t
        0x3bt
        0x91t
        0xf5t
        0x35t
        0x82t
        0x96t
        0xc9t
        0xfbt
        0x65t
        0xa7t
        0xfat
        0x1et
        0x20t
        0x30t
        0x39t
        0xd3t
        0xa9t
        0x42t
        0xc9t
        0x18t
        0x47t
        0x42t
        0x3at
        0xf5t
        0x6ct
        0x5ct
        0xct
        0x9et
        0x12t
        0xd0t
        0x49t
        0x90t
        0xc0t
        0x64t
        0xc8t
        0x82t
        0x98t
        0x7ft
        0xa9t
        0xf6t
        0x94t
        0x50t
        0xb9t
        0x64t
        0x8et
        0x99t
        0xdt
        0x8t
        0x6et
        0x25t
        0x1ft
        0x92t
        0xcat
        0xact
        0xdt
        0xa3t
        0x3et
        0x4dt
        0x55t
        0x33t
        0x27t
        0xfct
        0x5bt
        0x94t
        0xcat
        0x4et
        0x4ft
        0x4t
        0xeet
        0x14t
        0x4dt
        0xcct
        0x45t
        0xe4t
        0xc1t
        0xe9t
        0xb1t
        0x89t
        0x7at
        0x6ft
        0xcft
        0x8bt
        0x51t
        0x1dt
        0xfet
        0xc9t
        0x3t
        0x19t
        0x8et
        0x4dt
        0xbdt
        0xc1t
        0x9ft
        0x6bt
        0x71t
        0xbat
        0xc3t
        0x9t
        0xa5t
        0x99t
        0x23t
        0xc8t
        0xb8t
        0xact
        0xa1t
        0x71t
        0x45t
        0xc7t
        0xcbt
        0xa9t
        0x77t
        0xc1t
        0x52t
        0xfbt
        0x36t
        0x3ft
        0xe8t
        0x9ft
        0x37t
        0xd1t
        0xedt
        0xa6t
        0x39t
        0x8at
        0x49t
        0xect
        0x27t
        0xb6t
        0x64t
        0x89t
        0x89t
        0x1t
        0x88t
        0x6at
        0xat
        0x4at
        0x77t
        0xf8t
        0x9ft
        0x5dt
        0x2et
        0x73t
        0x6dt
        0x5t
        0x3bt
        0x92t
        0xc8t
        0x23t
        0xdt
        0x51t
        0x52t
        0x86t
        0x5ct
        0xaat
        0x98t
        0x45t
        0x56t
        0x15t
        0x38t
        0x17t
        0x7et
        0xat
        0x5t
        0x8ft
        0x65t
        0xf9t
        0x24t
        0xcet
        0xbft
        0x89t
        0x16t
        0x34t
        0x1t
        0xa3t
        0x65t
        0xf2t
        0x37t
        0xb7t
        0x58t
        0x85t
        0x9et
        0x29t
        0xd0t
        0x83t
        0x5at
        0xa5t
        0x25t
        0x1dt
        0x2et
        0x68t
        0x9bt
        0x6at
        0xb5t
        0x9at
        0x6at
        0x57t
        0x36t
        0xet
        0x12t
        0x25t
        0x18t
        0xa5t
        0x4ct
        0xd7t
        0x7dt
        0xact
        0x4bt
        0xd9t
        0xb6t
        0x3ct
        0x7ct
        0xe2t
        0xfbt
        0x33t
        0x72t
        0x46t
        0xfat
        0x98t
        0x8et
        0x65t
        0x8ct
        0x7at
        0xe9t
        0x32t
        0x22t
        0x3at
        0x63t
        0xfft
        0xadt
        0x83t
        0xc0t
        0x36t
        0xd0t
        0xb6t
        0xe3t
        0x1dt
        0xa2t
        0x80t
        0x10t
        0x29t
        0xe6t
        0x41t
        0xbet
        0xaft
        0xdet
        0x5ft
        0x87t
        0xc4t
        0xd5t
        0xeft
        0x9at
        0x3bt
        0x4at
        0x40t
        0xf1t
        0x8at
        0xaet
        0xa4t
        0x30t
        0x20t
        0x26t
        0x50t
        0xe8t
        0x32t
        0x15t
        0x7t
        0xcat
        0x31t
        0x4at
        0x9ft
        0x77t
        0x10t
        0xd8t
        0xdft
        0xe2t
        0xf5t
        0x81t
        0xdft
        0xa9t
        0xdt
        0x54t
        0x48t
        0xd2t
        0xb6t
        0xddt
        0x72t
        0x4ft
        0x73t
        0x5et
        0x1dt
        0xact
        0x5t
        0x29t
        0xeet
        0x33t
        0xect
        0x98t
        0xe7t
        0xd3t
        0x8bt
        0x84t
        0x19t
        0x95t
        0xdct
        0x25t
        0x88t
        0x9ft
        0xf3t
        0x11t
        0x5dt
        0x48t
        0xa3t
        0x7et
        0x6at
        0x5at
        0x6at
        0x40t
        0x82t
        0xe2t
        0xdt
        0xdct
        0xbet
        0x7at
        0xe3t
        0x43t
        0x50t
        0x21t
        0xb9t
        0x6t
        0x98t
        0xc0t
        0xfet
        0x57t
        0x18t
        0x3t
        0xa1t
        0xbct
        0xb6t
        0xdct
        0xct
        0xe3t
        0xd3t
        0x71t
        0xf7t
        0x37t
        0xe6t
        0xbt
        0x8et
        0xe3t
        0xfbt
        0xc2t
        0x65t
        0x75t
        0x38t
        0x4et
        0xf3t
        0xf4t
        0xa3t
        0xcct
        0xeet
        0x82t
        0xa5t
        0xebt
        0x34t
        0xfet
        0x32t
        0xbct
        0x8t
        0xb6t
        0xb8t
        0x39t
        0x6at
        0x5at
        0x24t
        0xa6t
        0xa1t
        0xe9t
        0x34t
        0xe0t
        0x55t
        0x75t
        0x4ct
        0x6dt
        0xadt
        0xb9t
        0x70t
        0x12t
        0xe0t
        0x56t
        0xdat
        0x32t
        0x5t
        0xadt
        0x2at
        0x98t
        0x5ft
        0xbt
        0xeft
        0xebt
        0x23t
        0xf2t
        0xe1t
        0x29t
        0xc7t
        0xaat
        0xa1t
        0xe8t
        0xbct
        0xbdt
        0xc8t
        0x61t
        0xft
        0x4ft
        0x18t
        0xcat
        0xeet
        0x60t
        0xf0t
        0x7ct
        0xddt
        0x13t
        0x4ft
        0xct
        0xc2t
        0x7ft
        0x93t
        0xe2t
        0x86t
        0xa2t
        0x46t
        0xfet
        0xcdt
        0x5bt
        0x21t
        0x47t
        0x24t
        0x17t
        0x19t
        0x7dt
        0xd1t
        0x88t
        0xe2t
        0xc7t
        0x0t
        0xabt
        0x38t
        0xd3t
        0xfet
        0x56t
        0x6t
        0xd8t
        0xc8t
        0x1ft
        0xa6t
        0x5bt
        0xbbt
        0x11t
        0x2bt
        0xe7t
        0x22t
        0x20t
        0x23t
        0x96t
        0xd4t
        0x4bt
        0xf4t
        0xc2t
        0x8bt
        0x89t
        0x27t
        0xf3t
        0xc0t
        0x90t
        0xfbt
        0x3dt
        0xat
        0x38t
        0x34t
        0x73t
        0x8dt
        0x10t
        0x12t
        0xddt
        0x3t
        0x8ft
        0x90t
        0x92t
        0x36t
        0x3t
        0xfbt
        0xc5t
        0x2at
        0xe5t
        0x3et
        0x90t
        0xe7t
        0x7et
        0x8at
        0x46t
        0x5t
        0x92t
        0xddt
        0x1ft
        0x4bt
        0x5ft
        0x2et
        0xc6t
        0x1bt
        0x8bt
        0x7bt
        0xd5t
        0xd3t
        0xb9t
        0xbat
        0x38t
        0xa2t
        0xdet
        0x20t
        0x28t
        0x6t
        0xbct
        0xb3t
        0x9t
        0x47t
        0xddt
        0xe2t
        0x16t
        0x36t
        0x14t
        0xcdt
        0xb0t
        0x6ft
        0xa7t
        0xf8t
        0x64t
        0xaet
        0x6at
        0xc8t
        0x2ft
        0x3ct
        0x4et
        0xb5t
        0xd9t
        0xdt
        0x28t
        0x38t
        0xf7t
        0xft
        0x3bt
        0xe0t
        0x17t
        0x1ct
        0x86t
        0xeet
        0x27t
        0xf9t
        0xa6t
        0x47t
        0xc2t
        0x7dt
        0x9bt
        0xd8t
        0xb6t
        0x48t
        0xbbt
        0x69t
        0x8dt
        0x24t
        0x5ct
        0x55t
        0xa8t
        0xb0t
        0xb7t
        0x42t
        0x25t
        0xa7t
        0x12t
        0xdct
        0xd6t
        0xb7t
        0x25t
        0x80t
        0xf3t
        0x90t
        0x77t
        0x9dt
        0xeft
        0x48t
        0x94t
        0x4bt
        0xe2t
        0xcdt
        0x64t
        0x56t
        0xe0t
        0x3bt
        0xdt
        0xebt
        0xe4t
        0x31t
        0xe6t
        0x29t
        0x1et
        0x8at
        0x5ct
        0x9ft
        0x97t
        0x74t
        0x86t
        0xa7t
        0x1ft
        0xb5t
        0xa9t
        0xc6t
        0x33t
        0x7ft
        0x5et
        0x6dt
        0x81t
        0x4dt
        0xe1t
        0x19t
        0x95t
        0xe1t
        0x81t
        0xf4t
        0xcft
        0x15t
    .end array-data

    :array_1
    .array-data 0x4
        0x30t 0x0t 0x0t 0x0t
        0xaet 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x9et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xbet 0x0t 0x0t 0x0t
        0xb9t 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0xd8t 0x0t 0x0t 0x0t
        0xb2t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0xa6t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x68t 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0xeft 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/ag;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/ag;Ljava/lang/String;)Lcom/tendcloud/tenddata/u;
    .locals 1

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/ag;->a(Ljava/lang/String;)Lcom/tendcloud/tenddata/u;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/tendcloud/tenddata/u;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "td-%.zip"

    const-string v2, "%"

    iget-object v3, p0, Lcom/tendcloud/tenddata/ag;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/ag;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "td.tmp-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tendcloud/tenddata/ag;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/ag;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "td.sdk.digest."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tendcloud/tenddata/ag;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/ag;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/tendcloud/tenddata/ag;->b:Landroid/content/Context;

    const-string v2, "td-cache"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tendcloud/tenddata/ag;->i:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/tendcloud/tenddata/ag;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const-class v5, Lcom/tendcloud/tenddata/ag;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v2, v0, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/u;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/ag;Lcom/tendcloud/tenddata/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/ag;->a(Lcom/tendcloud/tenddata/u;)V

    return-void
.end method

.method private a(Lcom/tendcloud/tenddata/u;)V
    .locals 5

    invoke-interface {p1}, Lcom/tendcloud/tenddata/u;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v3, Lcom/tendcloud/tenddata/ag;->n:[I

    sget-object v4, Lcom/tendcloud/tenddata/ag;->o:[I

    invoke-static {v3, v4}, Lcom/tendcloud/tenddata/ai;->a([I[I)[B

    move-result-object v3

    sget-object v4, Lcom/tendcloud/tenddata/ag;->m:[B

    invoke-static {v3, v4}, Lcom/tendcloud/tenddata/ai;->a([B[B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Lcom/tendcloud/tenddata/as;

    invoke-direct {v3, v1, v2, v0}, Lcom/tendcloud/tenddata/as;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1}, Lcom/tendcloud/tenddata/u;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tendcloud/tenddata/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tendcloud/tenddata/u;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tendcloud/tenddata/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tendcloud/tenddata/ag;->b:Landroid/content/Context;

    const-string v1, "td-cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tendcloud/tenddata/ag;->j:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tendcloud/tenddata/u;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/tendcloud/tenddata/as;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/tendcloud/tenddata/ag;->i:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    iget-object v0, p0, Lcom/tendcloud/tenddata/ag;->b:Landroid/content/Context;

    const-string v1, "pref_longtime"

    iget-object v3, p0, Lcom/tendcloud/tenddata/ag;->k:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lcom/tendcloud/tenddata/ap;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tendcloud/tenddata/u;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/io/File;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return v0

    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/ai;->a([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tendcloud/tenddata/ag;->b:Landroid/content/Context;

    const-string v4, "pref_longtime"

    iget-object v5, p0, Lcom/tendcloud/tenddata/ag;->k:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v3, v4, v5, v6}, Lcom/tendcloud/tenddata/ap;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/tendcloud/tenddata/u;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/ag;->a:Lcom/tendcloud/tenddata/u;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/ag;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/tendcloud/tenddata/ag;->h:Ljava/lang/String;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tendcloud/tenddata/ah;

    invoke-direct {v1, p0, p6}, Lcom/tendcloud/tenddata/ah;-><init>(Lcom/tendcloud/tenddata/ag;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/tendcloud/tenddata/ag;->a:Lcom/tendcloud/tenddata/u;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/ag;->l:Z

    invoke-virtual {p5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/u;

    iput-object v0, p0, Lcom/tendcloud/tenddata/ag;->a:Lcom/tendcloud/tenddata/u;

    :cond_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/ag;->a:Lcom/tendcloud/tenddata/u;

    invoke-interface {v0, p1, p2}, Lcom/tendcloud/tenddata/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/ag;->a:Lcom/tendcloud/tenddata/u;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
