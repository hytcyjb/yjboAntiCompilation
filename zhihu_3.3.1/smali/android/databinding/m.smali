.class public abstract Landroid/databinding/m;
.super Landroid/databinding/a;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/m$b;,
        Landroid/databinding/m$a;,
        Landroid/databinding/m$f;,
        Landroid/databinding/m$d;,
        Landroid/databinding/m$g;,
        Landroid/databinding/m$e;,
        Landroid/databinding/m$c;
    }
.end annotation


# static fields
.field static a:I

.field private static final c:I

.field private static final d:Z

.field private static final e:Z

.field private static final f:Landroid/databinding/m$a;

.field private static final g:Landroid/databinding/m$a;

.field private static final h:Landroid/databinding/m$a;

.field private static final i:Landroid/databinding/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/b$a",
            "<",
            "Landroid/databinding/k;",
            "Landroid/databinding/m;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field protected final b:Landroid/databinding/d;

.field private final k:Ljava/lang/Runnable;

.field private l:Z

.field private m:Z

.field private n:[Landroid/databinding/m$e;

.field private final o:Landroid/view/View;

.field private p:Landroid/databinding/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/b",
            "<",
            "Landroid/databinding/k;",
            "Landroid/databinding/m;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Landroid/view/Choreographer;

.field private final s:Landroid/view/Choreographer$FrameCallback;

.field private t:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/databinding/m;->a:I

    .line 72
    const-string v0, "binding_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/databinding/m;->c:I

    .line 75
    sget v0, Landroid/databinding/c;->a:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/databinding/m;->d:Z

    .line 77
    sget v0, Landroid/databinding/m;->a:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Landroid/databinding/m;->e:Z

    .line 82
    new-instance v0, Landroid/databinding/m$1;

    invoke-direct {v0}, Landroid/databinding/m$1;-><init>()V

    sput-object v0, Landroid/databinding/m;->f:Landroid/databinding/m$a;

    .line 92
    new-instance v0, Landroid/databinding/m$2;

    invoke-direct {v0}, Landroid/databinding/m$2;-><init>()V

    sput-object v0, Landroid/databinding/m;->g:Landroid/databinding/m$a;

    .line 102
    new-instance v0, Landroid/databinding/m$3;

    invoke-direct {v0}, Landroid/databinding/m$3;-><init>()V

    sput-object v0, Landroid/databinding/m;->h:Landroid/databinding/m$a;

    .line 110
    new-instance v0, Landroid/databinding/m$4;

    invoke-direct {v0}, Landroid/databinding/m$4;-><init>()V

    sput-object v0, Landroid/databinding/m;->i:Landroid/databinding/b$a;

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_2

    .line 134
    const/4 v0, 0x0

    sput-object v0, Landroid/databinding/m;->j:Landroid/view/View$OnAttachStateChangeListener;

    .line 151
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0

    :cond_1
    move v1, v2

    .line 77
    goto :goto_1

    .line 136
    :cond_2
    new-instance v0, Landroid/databinding/m$5;

    invoke-direct {v0}, Landroid/databinding/m$5;-><init>()V

    sput-object v0, Landroid/databinding/m;->j:Landroid/view/View$OnAttachStateChangeListener;

    goto :goto_2
.end method

.method protected constructor <init>(Landroid/databinding/d;Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-direct {p0}, Landroid/databinding/a;-><init>()V

    .line 156
    new-instance v0, Landroid/databinding/m$6;

    invoke-direct {v0, p0}, Landroid/databinding/m$6;-><init>(Landroid/databinding/m;)V

    iput-object v0, p0, Landroid/databinding/m;->k:Ljava/lang/Runnable;

    .line 179
    iput-boolean v1, p0, Landroid/databinding/m;->l:Z

    .line 184
    iput-boolean v1, p0, Landroid/databinding/m;->m:Z

    .line 227
    iput-object p1, p0, Landroid/databinding/m;->b:Landroid/databinding/d;

    .line 228
    new-array v0, p3, [Landroid/databinding/m$e;

    iput-object v0, p0, Landroid/databinding/m;->n:[Landroid/databinding/m$e;

    .line 229
    iput-object p2, p0, Landroid/databinding/m;->o:Landroid/view/View;

    .line 230
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    sget-boolean v0, Landroid/databinding/m;->e:Z

    if-eqz v0, :cond_1

    .line 234
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/databinding/m;->r:Landroid/view/Choreographer;

    .line 235
    new-instance v0, Landroid/databinding/m$7;

    invoke-direct {v0, p0}, Landroid/databinding/m$7;-><init>(Landroid/databinding/m;)V

    iput-object v0, p0, Landroid/databinding/m;->s:Landroid/view/Choreographer$FrameCallback;

    .line 245
    :goto_0
    return-void

    .line 242
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/databinding/m;->s:Landroid/view/Choreographer$FrameCallback;

    .line 243
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/databinding/m;->t:Landroid/os/Handler;

    goto :goto_0
.end method

.method private static a(Landroid/view/ViewGroup;I)I
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 1018
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1019
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1020
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1021
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 1023
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1025
    add-int/lit8 v2, p1, 0x1

    move v3, p1

    :goto_0
    if-ge v2, v6, :cond_0

    .line 1026
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1027
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1028
    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1029
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-ne v7, v8, :cond_1

    .line 1037
    :cond_0
    return v3

    .line 1032
    :cond_1
    invoke-static {v1, v5}, Landroid/databinding/m;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 1025
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;ILandroid/databinding/m$b;I)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1003
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1004
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1006
    iget-object v0, p2, Landroid/databinding/m$b;->a:[[Ljava/lang/String;

    aget-object v2, v0, p3

    .line 1007
    array-length v3, v2

    move v0, p1

    .line 1008
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1009
    aget-object v4, v2, v0

    .line 1010
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1014
    :goto_1
    return v0

    .line 1008
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1014
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic a(Landroid/databinding/m;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Landroid/databinding/m;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static a(Landroid/databinding/d;Landroid/view/View;[Ljava/lang/Object;Landroid/databinding/m$b;Landroid/util/SparseIntArray;Z)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 918
    invoke-static {p1}, Landroid/databinding/m;->b(Landroid/view/View;)Landroid/databinding/m;

    move-result-object v1

    .line 919
    if-eqz v1, :cond_1

    .line 999
    :cond_0
    return-void

    .line 922
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 923
    const/4 v2, 0x0

    .line 924
    if-eqz p5, :cond_7

    if-eqz v1, :cond_7

    const-string v3, "layout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 925
    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 926
    if-lez v3, :cond_6

    add-int/lit8 v4, v3, 0x1

    invoke-static {v1, v4}, Landroid/databinding/m;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 927
    add-int/lit8 v2, v3, 0x1

    invoke-static {v1, v2}, Landroid/databinding/m;->b(Ljava/lang/String;I)I

    move-result v1

    .line 928
    aget-object v2, p2, v1

    if-nez v2, :cond_2

    .line 929
    aput-object p1, p2, v1

    .line 931
    :cond_2
    if-nez p3, :cond_3

    const/4 v1, -0x1

    .line 932
    :cond_3
    const/4 v2, 0x1

    move v13, v2

    move v2, v1

    move v1, v13

    :goto_0
    move v9, v2

    .line 947
    :goto_1
    if-nez v1, :cond_4

    .line 948
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 949
    if-lez v1, :cond_4

    .line 951
    if-eqz p4, :cond_4

    const/4 v2, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ltz v1, :cond_4

    aget-object v2, p2, v1

    if-nez v2, :cond_4

    .line 953
    aput-object p1, p2, v1

    .line 958
    :cond_4
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 959
    check-cast p1, Landroid/view/ViewGroup;

    .line 960
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 961
    const/4 v5, 0x0

    .line 962
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v10, :cond_0

    .line 963
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 964
    const/4 v3, 0x0

    .line 965
    if-ltz v9, :cond_d

    .line 966
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 967
    if-eqz v1, :cond_d

    const-string v6, "_0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "layout"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x2f

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_d

    .line 970
    move-object/from16 v0, p3

    invoke-static {v1, v5, v0, v9}, Landroid/databinding/m;->a(Ljava/lang/String;ILandroid/databinding/m$b;I)I

    move-result v6

    .line 972
    if-ltz v6, :cond_d

    .line 973
    const/4 v1, 0x1

    .line 974
    add-int/lit8 v5, v6, 0x1

    .line 975
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/databinding/m$b;->b:[[I

    aget-object v3, v3, v9

    aget v7, v3, v6

    .line 976
    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/databinding/m$b;->c:[[I

    aget-object v3, v3, v9

    aget v6, v3, v6

    .line 977
    invoke-static {p1, v4}, Landroid/databinding/m;->a(Landroid/view/ViewGroup;I)I

    move-result v3

    .line 978
    if-ne v3, v4, :cond_b

    .line 979
    invoke-static {p0, v2, v6}, Landroid/databinding/e;->a(Landroid/databinding/d;Landroid/view/View;I)Landroid/databinding/m;

    move-result-object v3

    aput-object v3, p2, v7

    move v7, v4

    move v8, v5

    .line 994
    :goto_3
    if-nez v1, :cond_5

    .line 995
    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Landroid/databinding/m;->a(Landroid/databinding/d;Landroid/view/View;[Ljava/lang/Object;Landroid/databinding/m$b;Landroid/util/SparseIntArray;Z)V

    .line 962
    :cond_5
    add-int/lit8 v4, v7, 0x1

    move v5, v8

    goto :goto_2

    .line 934
    :cond_6
    const/4 v1, -0x1

    move v13, v2

    move v2, v1

    move v1, v13

    goto/16 :goto_0

    .line 936
    :cond_7
    if-eqz v1, :cond_a

    const-string v3, "binding_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 937
    sget v2, Landroid/databinding/m;->c:I

    invoke-static {v1, v2}, Landroid/databinding/m;->b(Ljava/lang/String;I)I

    move-result v1

    .line 938
    aget-object v2, p2, v1

    if-nez v2, :cond_8

    .line 939
    aput-object p1, p2, v1

    .line 941
    :cond_8
    const/4 v2, 0x1

    .line 942
    if-nez p3, :cond_9

    const/4 v1, -0x1

    :cond_9
    move v9, v1

    move v1, v2

    .line 943
    goto/16 :goto_1

    .line 945
    :cond_a
    const/4 v1, -0x1

    move v9, v1

    move v1, v2

    goto/16 :goto_1

    .line 982
    :cond_b
    sub-int/2addr v3, v4

    add-int/lit8 v8, v3, 0x1

    .line 983
    new-array v11, v8, [Landroid/view/View;

    .line 984
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v8, :cond_c

    .line 985
    add-int v12, v4, v3

    invoke-virtual {p1, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    aput-object v12, v11, v3

    .line 984
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 987
    :cond_c
    invoke-static {p0, v11, v6}, Landroid/databinding/e;->a(Landroid/databinding/d;[Landroid/view/View;I)Landroid/databinding/m;

    move-result-object v3

    aput-object v3, p2, v7

    .line 989
    add-int/lit8 v3, v8, -0x1

    add-int/2addr v3, v4

    move v7, v3

    move v8, v5

    goto :goto_3

    :cond_d
    move v1, v3

    move v7, v4

    move v8, v5

    goto :goto_3
.end method

.method static synthetic a(Landroid/databinding/m;ILjava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/databinding/m;->b(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic a(Landroid/databinding/m;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Landroid/databinding/m;->m:Z

    return p1
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1041
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1042
    if-ne v1, p1, :cond_1

    .line 1050
    :goto_0
    return v0

    .line 1045
    :cond_0
    add-int/lit8 p1, p1, 0x1

    :cond_1
    if-ge p1, v1, :cond_2

    .line 1046
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1050
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static a(Landroid/databinding/d;Landroid/view/View;ILandroid/databinding/m$b;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 567
    new-array v2, p2, [Ljava/lang/Object;

    .line 568
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/databinding/m;->a(Landroid/databinding/d;Landroid/view/View;[Ljava/lang/Object;Landroid/databinding/m$b;Landroid/util/SparseIntArray;Z)V

    .line 569
    return-object v2
.end method

.method private static b(Ljava/lang/String;I)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1060
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1061
    const/4 v0, 0x0

    .line 1062
    :goto_0
    if-ge p1, v1, :cond_0

    .line 1063
    mul-int/lit8 v0, v0, 0xa

    .line 1064
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1065
    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    .line 1062
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1067
    :cond_0
    return v0
.end method

.method static b(Landroid/view/View;)Landroid/databinding/m;
    .locals 2
    .parameter

    .prologue
    .line 401
    if-eqz p0, :cond_1

    .line 402
    sget-boolean v0, Landroid/databinding/m;->d:Z

    if-eqz v0, :cond_0

    .line 403
    sget v0, Lcom/android/a/a/a$a;->dataBinding:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/databinding/m;

    .line 411
    :goto_0
    return-object v0

    .line 405
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 406
    instance-of v1, v0, Landroid/databinding/m;

    if-eqz v1, :cond_1

    .line 407
    check-cast v0, Landroid/databinding/m;

    goto :goto_0

    .line 411
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Landroid/databinding/m;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Landroid/databinding/m;->o:Landroid/view/View;

    return-object v0
.end method

.method private b(ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    invoke-virtual {p0, p1, p2, p3}, Landroid/databinding/m;->a(ILjava/lang/Object;I)Z

    move-result v0

    .line 426
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Landroid/databinding/m;->f()V

    .line 429
    :cond_0
    return-void
.end method

.method private b(ILjava/lang/Object;Landroid/databinding/m$a;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 473
    if-nez p2, :cond_0

    .line 474
    invoke-virtual {p0, p1}, Landroid/databinding/m;->a(I)Z

    move-result v0

    .line 486
    :goto_0
    return v0

    .line 476
    :cond_0
    iget-object v1, p0, Landroid/databinding/m;->n:[Landroid/databinding/m$e;

    aget-object v1, v1, p1

    .line 477
    if-nez v1, :cond_1

    .line 478
    invoke-virtual {p0, p1, p2, p3}, Landroid/databinding/m;->a(ILjava/lang/Object;Landroid/databinding/m$a;)V

    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {v1}, Landroid/databinding/m$e;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_2

    .line 482
    const/4 v0, 0x0

    goto :goto_0

    .line 484
    :cond_2
    invoke-virtual {p0, p1}, Landroid/databinding/m;->a(I)Z

    .line 485
    invoke-virtual {p0, p1, p2, p3}, Landroid/databinding/m;->a(ILjava/lang/Object;Landroid/databinding/m$a;)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/databinding/m;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Landroid/databinding/m;->l:Z

    return p1
.end method

.method static synthetic g()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Landroid/databinding/m;->j:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 337
    iget-boolean v0, p0, Landroid/databinding/m;->q:Z

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Landroid/databinding/m;->f()V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {p0}, Landroid/databinding/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iput-boolean v1, p0, Landroid/databinding/m;->q:Z

    .line 345
    iput-boolean v3, p0, Landroid/databinding/m;->m:Z

    .line 346
    iget-object v0, p0, Landroid/databinding/m;->p:Landroid/databinding/b;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Landroid/databinding/m;->p:Landroid/databinding/b;

    invoke-virtual {v0, p0, v1, v2}, Landroid/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 350
    iget-boolean v0, p0, Landroid/databinding/m;->m:Z

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Landroid/databinding/m;->p:Landroid/databinding/b;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 354
    :cond_2
    iget-boolean v0, p0, Landroid/databinding/m;->m:Z

    if-nez v0, :cond_3

    .line 355
    invoke-virtual {p0}, Landroid/databinding/m;->b()V

    .line 356
    iget-object v0, p0, Landroid/databinding/m;->p:Landroid/databinding/b;

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Landroid/databinding/m;->p:Landroid/databinding/b;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 360
    :cond_3
    iput-boolean v3, p0, Landroid/databinding/m;->q:Z

    goto :goto_0
.end method

.method protected a(ILjava/lang/Object;Landroid/databinding/m$a;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 531
    if-nez p2, :cond_0

    .line 540
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Landroid/databinding/m;->n:[Landroid/databinding/m$e;

    aget-object v0, v0, p1

    .line 535
    if-nez v0, :cond_1

    .line 536
    invoke-interface {p3, p0, p1}, Landroid/databinding/m$a;->a(Landroid/databinding/m;I)Landroid/databinding/m$e;

    move-result-object v0

    .line 537
    iget-object v1, p0, Landroid/databinding/m;->n:[Landroid/databinding/m$e;

    aput-object v0, v1, p1

    .line 539
    :cond_1
    invoke-virtual {v0, p2}, Landroid/databinding/m$e;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 251
    sget-boolean v0, Landroid/databinding/m;->d:Z

    if-eqz v0, :cond_0

    .line 252
    sget v0, Lcom/android/a/a/a$a;->dataBinding:I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Landroid/databinding/m;->n:[Landroid/databinding/m$e;

    aget-object v0, v0, p1

    .line 436
    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0}, Landroid/databinding/m$e;->a()Z

    move-result v0

    .line 439
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(ILandroid/databinding/h;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 493
    sget-object v0, Landroid/databinding/m;->f:Landroid/databinding/m$a;

    invoke-direct {p0, p1, p2, v0}, Landroid/databinding/m;->b(ILjava/lang/Object;Landroid/databinding/m$a;)Z

    move-result v0

    return v0
.end method

.method protected abstract a(ILjava/lang/Object;I)Z
.end method

.method protected b(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter

    .prologue
    .line 592
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 593
    invoke-virtual {p0}, Landroid/databinding/m;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 595
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/databinding/m;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract b()V
.end method

.method public abstract c()Z
.end method

.method public d()V
    .locals 4

    .prologue
    .line 388
    iget-object v1, p0, Landroid/databinding/m;->n:[Landroid/databinding/m$e;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 389
    if-eqz v3, :cond_0

    .line 390
    invoke-virtual {v3}, Landroid/databinding/m$e;->a()Z

    .line 388
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_1
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Landroid/databinding/m;->o:Landroid/view/View;

    return-object v0
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 446
    monitor-enter p0

    .line 447
    :try_start_0
    iget-boolean v0, p0, Landroid/databinding/m;->l:Z

    if-eqz v0, :cond_0

    .line 448
    monitor-exit p0

    .line 458
    :goto_0
    return-void

    .line 450
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/databinding/m;->l:Z

    .line 451
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    sget-boolean v0, Landroid/databinding/m;->e:Z

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Landroid/databinding/m;->r:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/databinding/m;->s:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 455
    :cond_1
    iget-object v0, p0, Landroid/databinding/m;->t:Landroid/os/Handler;

    iget-object v1, p0, Landroid/databinding/m;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 397
    invoke-virtual {p0}, Landroid/databinding/m;->d()V

    .line 398
    return-void
.end method
