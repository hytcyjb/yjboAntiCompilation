.class final Lcom/facebook/soloader/c$a;
.super Lcom/facebook/soloader/h$e;
.source "ExoSoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/c$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/soloader/c;

.field private final b:[Lcom/facebook/soloader/c$b;


# direct methods
.method constructor <init>(Lcom/facebook/soloader/c;)V
    .locals 20
    .parameter

    .prologue
    .line 59
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/soloader/c$a;->a:Lcom/facebook/soloader/c;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/soloader/h$e;-><init>()V

    .line 60
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/facebook/soloader/c;->e:Landroid/content/Context;

    .line 61
    new-instance v8, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/local/tmp/exopackage/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/native-libs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-static {}, Lcom/facebook/soloader/g;->a()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v2, 0x0

    move v7, v2

    :goto_0
    if-ge v7, v11, :cond_d

    aget-object v2, v10, v7

    .line 69
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_1
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_0

    .line 74
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "metadata.txt"

    invoke-direct {v2, v12, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    .line 80
    :try_start_0
    new-instance v14, Ljava/io/BufferedReader;

    invoke-direct {v14, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    const/4 v3, 0x0

    .line 82
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 83
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    const/16 v2, 0x20

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 88
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 89
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal line in exopackage metadata: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    :catch_0
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :catchall_0
    move-exception v3

    move-object/from16 v19, v3

    move-object v3, v2

    move-object/from16 v2, v19

    :goto_3
    if-eqz v14, :cond_3

    if-eqz v3, :cond_a

    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_4
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 79
    :catch_1
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 113
    :catchall_1
    move-exception v3

    move-object/from16 v19, v3

    move-object v3, v2

    move-object/from16 v2, v19

    :goto_5
    if-eqz v13, :cond_4

    if-eqz v3, :cond_c

    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    :goto_6
    throw v2

    .line 92
    :cond_5
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".so"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 93
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 94
    const/4 v5, 0x0

    .line 95
    const/4 v2, 0x0

    move v6, v2

    :goto_7
    move/from16 v0, v18

    if-ge v6, v0, :cond_e

    .line 96
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/soloader/c$b;

    iget-object v2, v2, Lcom/facebook/soloader/c$b;->c:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 97
    const/4 v2, 0x1

    .line 102
    :goto_8
    if-nez v2, :cond_2

    .line 106
    add-int/lit8 v2, v16, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    new-instance v5, Lcom/facebook/soloader/c$b;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v5, v0, v2, v6}, Lcom/facebook/soloader/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 113
    :catchall_2
    move-exception v2

    goto :goto_3

    .line 95
    :cond_6
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_7

    .line 113
    :cond_7
    if-eqz v14, :cond_8

    if-eqz v3, :cond_9

    :try_start_8
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :cond_8
    :goto_9
    if-eqz v13, :cond_0

    if-eqz v4, :cond_b

    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_3
    move-exception v2

    :try_start_a
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :catchall_3
    move-exception v2

    move-object v3, v4

    goto :goto_5

    :cond_9
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    goto :goto_9

    :catch_4
    move-exception v5

    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V

    goto/16 :goto_1

    :catch_5
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V

    goto/16 :goto_6

    .line 116
    :cond_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/facebook/soloader/c$b;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/facebook/soloader/c$b;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/facebook/soloader/c$a;->b:[Lcom/facebook/soloader/c$b;

    .line 117
    return-void

    :cond_e
    move v2, v5

    goto :goto_8
.end method

.method static synthetic a(Lcom/facebook/soloader/c$a;)[Lcom/facebook/soloader/c$b;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/soloader/c$a;->b:[Lcom/facebook/soloader/c$b;

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/facebook/soloader/h$b;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/facebook/soloader/h$b;

    iget-object v1, p0, Lcom/facebook/soloader/c$a;->b:[Lcom/facebook/soloader/c$b;

    invoke-direct {v0, v1}, Lcom/facebook/soloader/h$b;-><init>([Lcom/facebook/soloader/h$a;)V

    return-object v0
.end method

.method protected b()Lcom/facebook/soloader/h$d;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/facebook/soloader/c$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/soloader/c$a$a;-><init>(Lcom/facebook/soloader/c$a;Lcom/facebook/soloader/c$1;)V

    return-object v0
.end method
