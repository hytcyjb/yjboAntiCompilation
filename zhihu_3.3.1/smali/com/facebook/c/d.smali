.class Lcom/facebook/c/d;
.super Ljava/lang/Object;
.source "TiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/c/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/facebook/c/d;

    sput-object v0, Lcom/facebook/c/d;->a:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static a(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    packed-switch p0, :pswitch_data_0

    .line 47
    :pswitch_0
    sget-object v1, Lcom/facebook/c/d;->a:Ljava/lang/Class;

    const-string v2, "Unsupported orientation"

    invoke-static {v1, v2}, Lcom/facebook/common/d/a;->c(Ljava/lang/Class;Ljava/lang/String;)V

    .line 48
    :goto_0
    :pswitch_1
    return v0

    .line 41
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 43
    :pswitch_3
    const/16 v0, 0x5a

    goto :goto_0

    .line 45
    :pswitch_4
    const/16 v0, 0x10e

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/io/InputStream;I)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/facebook/c/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/c/d$a;-><init>(Lcom/facebook/c/d$1;)V

    .line 60
    invoke-static {p0, p1, v0}, Lcom/facebook/c/d;->a(Ljava/io/InputStream;ILcom/facebook/c/d$a;)I

    move-result v1

    .line 65
    iget v2, v0, Lcom/facebook/c/d$a;->c:I

    add-int/lit8 v2, v2, -0x8

    .line 66
    if-eqz v1, :cond_0

    if-le v2, v1, :cond_1

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    .line 69
    :cond_1
    int-to-long v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 70
    sub-int/2addr v1, v2

    .line 73
    iget-boolean v2, v0, Lcom/facebook/c/d$a;->a:Z

    const/16 v3, 0x112

    invoke-static {p0, v1, v2, v3}, Lcom/facebook/c/d;->a(Ljava/io/InputStream;IZI)I

    move-result v1

    .line 76
    iget-boolean v0, v0, Lcom/facebook/c/d$a;->a:Z

    invoke-static {p0, v1, v0}, Lcom/facebook/c/d;->a(Ljava/io/InputStream;IZ)I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;ILcom/facebook/c/d$a;)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x49492a00

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 97
    if-gt p1, v5, :cond_0

    .line 119
    :goto_0
    return v1

    .line 102
    :cond_0
    invoke-static {p0, v4, v1}, Lcom/facebook/c/c;->a(Ljava/io/InputStream;IZ)I

    move-result v0

    iput v0, p2, Lcom/facebook/c/d$a;->b:I

    .line 103
    add-int/lit8 v2, p1, -0x4

    .line 104
    iget v0, p2, Lcom/facebook/c/d$a;->b:I

    if-eq v0, v6, :cond_1

    iget v0, p2, Lcom/facebook/c/d$a;->b:I

    const v3, 0x4d4d002a

    if-eq v0, v3, :cond_1

    .line 106
    sget-object v0, Lcom/facebook/c/d;->a:Ljava/lang/Class;

    const-string v2, "Invalid TIFF header"

    invoke-static {v0, v2}, Lcom/facebook/common/d/a;->d(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    iget v0, p2, Lcom/facebook/c/d$a;->b:I

    if-ne v0, v6, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p2, Lcom/facebook/c/d$a;->a:Z

    .line 112
    iget-boolean v0, p2, Lcom/facebook/c/d$a;->a:Z

    invoke-static {p0, v4, v0}, Lcom/facebook/c/c;->a(Ljava/io/InputStream;IZ)I

    move-result v0

    iput v0, p2, Lcom/facebook/c/d$a;->c:I

    .line 113
    add-int/lit8 v0, v2, -0x4

    .line 114
    iget v2, p2, Lcom/facebook/c/d$a;->c:I

    if-lt v2, v5, :cond_2

    iget v2, p2, Lcom/facebook/c/d$a;->c:I

    add-int/lit8 v2, v2, -0x8

    if-le v2, v0, :cond_4

    .line 115
    :cond_2
    sget-object v0, Lcom/facebook/c/d;->a:Ljava/lang/Class;

    const-string v2, "Invalid offset"

    invoke-static {v0, v2}, Lcom/facebook/common/d/a;->d(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 109
    goto :goto_1

    :cond_4
    move v1, v0

    .line 119
    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;IZ)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 165
    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    invoke-static {p0, v3, p2}, Lcom/facebook/c/c;->a(Ljava/io/InputStream;IZ)I

    move-result v1

    .line 170
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 174
    const/4 v1, 0x4

    invoke-static {p0, v1, p2}, Lcom/facebook/c/c;->a(Ljava/io/InputStream;IZ)I

    move-result v1

    .line 175
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 178
    invoke-static {p0, v3, p2}, Lcom/facebook/c/c;->a(Ljava/io/InputStream;IZ)I

    move-result v0

    .line 179
    invoke-static {p0, v3, p2}, Lcom/facebook/c/c;->a(Ljava/io/InputStream;IZ)I

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;IZI)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 136
    const/16 v1, 0xe

    if-ge p1, v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    invoke-static {p0, v6, p2}, Lcom/facebook/c/c;->a(Ljava/io/InputStream;IZ)I

    move-result v1

    .line 143
    add-int/lit8 v2, p1, -0x2

    move v3, v2

    .line 144
    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    const/16 v1, 0xc

    if-lt v3, v1, :cond_0

    .line 145
    invoke-static {p0, v6, p2}, Lcom/facebook/c/c;->a(Ljava/io/InputStream;IZ)I

    move-result v4

    .line 146
    add-int/lit8 v1, v3, -0x2

    .line 147
    if-ne v4, p3, :cond_2

    move v0, v1

    .line 148
    goto :goto_0

    .line 150
    :cond_2
    const-wide/16 v4, 0xa

    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 151
    add-int/lit8 v1, v1, -0xa

    move v3, v1

    move v1, v2

    .line 152
    goto :goto_1
.end method
